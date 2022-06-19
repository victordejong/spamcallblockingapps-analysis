.class Lcom/callerid/block/start/GgGuideActivity$a;
.super Lcom/callerid/block/inapputil/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/start/GgGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/GgGuideActivity;


# direct methods
.method private constructor <init>(Lcom/callerid/block/start/GgGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-direct {p0}, Lcom/callerid/block/inapputil/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/start/GgGuideActivity;Lcom/callerid/block/start/GgGuideActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/start/GgGuideActivity$a;-><init>(Lcom/callerid/block/start/GgGuideActivity;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/callerid/block/inapputil/c;->a(Z)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "inappbilling"

    const-string v0, "onAcknowledgePurchaseSuccess"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/callerid/block/inapputil/c;->d(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V

    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001f4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public e(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/callerid/block/inapputil/c;->e(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inappbilling"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSelf:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->c:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    iget-object p2, p2, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "buy_ad_fail"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f(Lcom/android/billingclient/api/Purchase;Z)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "free_ad_plan_month"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "free_ad_plan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "inappbilling"

    const-string v2, "Infinite gas subscription purchased."

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchase:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/callerid/block/start/GgGuideActivity$a$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/GgGuideActivity$a$b;-><init>(Lcom/callerid/block/start/GgGuideActivity$a;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->b(Lcom/callerid/block/h/a/b/c;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "buy_ad_success_month"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "buy_ad_success"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/callerid/block/inapputil/c;->f(Lcom/android/billingclient/api/Purchase;Z)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/callerid/block/inapputil/c;->g(Ljava/lang/String;Ljava/util/List;Z)V

    const-string p3, "subs"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    sget-boolean p3, Lcom/callerid/block/util/w;->a:Z

    const-string v0, "inappbilling"

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object p3

    const-string v1, "free_ad_plan_month"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/callerid/block/start/GgGuideActivity;->V(Lcom/callerid/block/start/GgGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p3, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p3}, Lcom/callerid/block/start/GgGuideActivity;->W(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {v1}, Lcom/callerid/block/start/GgGuideActivity;->U(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object p3

    const-string v1, "free_ad_plan"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/callerid/block/start/GgGuideActivity;->Y(Lcom/callerid/block/start/GgGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p2}, Lcom/callerid/block/start/GgGuideActivity;->X(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p3}, Lcom/callerid/block/start/GgGuideActivity;->X(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "$"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v2, 0x1

    add-int/2addr p3, v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sget-boolean p3, Lcom/callerid/block/util/w;->a:Z

    if-eqz p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sign:"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%.2f"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {v5}, Lcom/callerid/block/start/GgGuideActivity;->X(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {v6}, Lcom/callerid/block/start/GgGuideActivity;->X(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p3}, Lcom/callerid/block/start/GgGuideActivity;->Z(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p2

    sget-boolean p3, Lcom/callerid/block/util/w;->a:Z

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p2, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p2}, Lcom/callerid/block/start/GgGuideActivity;->X(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p3}, Lcom/callerid/block/start/GgGuideActivity;->Z(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p2}, Lcom/callerid/block/start/GgGuideActivity;->a0(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100067

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public i(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/callerid/block/inapputil/c;->i(Z)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    const-string v0, "inappbilling"

    if-eqz p1, :cond_0

    const-string p1, "\u5185\u8d2d\u670d\u52a1\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p1}, Lcom/callerid/block/start/GgGuideActivity;->R(Lcom/callerid/block/start/GgGuideActivity;)Lcom/callerid/block/inapputil/GoogleBillingUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p1, v1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->E(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "has subscription"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->g()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callerid/block/start/GgGuideActivity;->S(Lcom/callerid/block/start/GgGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-static {p1}, Lcom/callerid/block/start/GgGuideActivity;->T(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    new-instance p1, Lcom/callerid/block/start/GgGuideActivity$a$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/start/GgGuideActivity$a$a;-><init>(Lcom/callerid/block/start/GgGuideActivity$a;)V

    invoke-static {p1}, Lcom/callerid/block/h/a/b/a;->b(Lcom/callerid/block/h/a/b/c;)V

    goto :goto_0

    :cond_3
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "no subscription"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/callerid/block/h/a/b/a;->c()V

    :goto_0
    return-void
.end method
