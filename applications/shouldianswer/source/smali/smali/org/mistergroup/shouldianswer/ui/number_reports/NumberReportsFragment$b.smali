.class final Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;
.super Lkotlin/e/b/i;
.source "NumberReportsFragment.kt"

# interfaces
.implements Lkotlin/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/a<",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->c:Lorg/mistergroup/shouldianswer/ui/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->b()V

    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method

.method public final b()V
    .locals 7

    .line 100
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "NumberReviewsActivity.moreReviews"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 103
    :try_start_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "URLEncoder.encode(numberInfo.getNumber(), \"UTF-8\")"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 105
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    const-string v2, ""

    .line 110
    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/t;->a()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/t$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/search?q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&src=map&countryOperator="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 110
    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 116
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$b;->c:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v0, Landroid/content/Context;

    const-string v1, "Error openning web browser!"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
