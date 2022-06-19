.class Lcom/allinone/callerid/mvc/controller/MainActivity$k0;
.super Lcom/allinone/callerid/inapputil/c;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k0"
.end annotation


# instance fields
.field final synthetic b:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Lcom/allinone/callerid/inapputil/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Lcom/allinone/callerid/mvc/controller/MainActivity$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/inapputil/c;->a(Z)V

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "inappbilling"

    const-string v0, "onAcknowledgePurchaseSuccess"

    .line 3
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/allinone/callerid/inapputil/c;->d(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V

    const-string p1, ""

    .line 2
    sput-object p1, Lcom/allinone/callerid/util/h1;->f:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10037b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public e(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/allinone/callerid/inapputil/c;->e(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "inappbilling"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSelf:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    sget-object p3, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->e:Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    iget-object p3, p3, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/allinone/callerid/i/a/t/b;->b(ILandroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "buy_ad_fail"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/allinone/callerid/util/h1;->f:Ljava/lang/String;

    const-string p2, "showcaller_removeads_year"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "subscribe_year_failed"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 11
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "year_failed"

    .line 12
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/allinone/callerid/util/h1;->f:Ljava/lang/String;

    const-string p2, "showcaller_removeads_month"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "subscribe_month_failed"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 15
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "month_failed"

    .line 16
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string p1, ""

    .line 17
    sput-object p1, Lcom/allinone/callerid/util/h1;->f:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public f(Lcom/android/billingclient/api/Purchase;Z)Z
    .locals 4

    const-string v0, "inappbilling"

    const-string v1, "showcaller_removeads_month"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "showcaller_removeads_year"

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "showcaller_removeads_month_specialoffers"

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "showcaller_removeads_year_specialoffers"

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    :cond_0
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "Infinite gas subscription purchased."

    .line 6
    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchase:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100314

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$k0$b;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$k0;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->b(Lcom/allinone/callerid/i/a/e/c;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "buy_ad_success_month"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "buy_ad_success"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->L0(Lcom/allinone/callerid/mvc/controller/MainActivity;J)J

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->N0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, ""

    .line 19
    sput-object v0, Lcom/allinone/callerid/util/h1;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/allinone/callerid/inapputil/c;->f(Lcom/android/billingclient/api/Purchase;Z)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/allinone/callerid/inapputil/c;->g(Ljava/lang/String;Ljava/util/List;Z)V

    :try_start_0
    const-string p3, "subs"

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "showcaller_removeads_month"

    const-string v0, "inappbilling"

    if-eqz p1, :cond_3

    .line 3
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 4
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->E0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string v1, "showcaller_removeads_year"

    .line 8
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->F0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->G0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->F(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 12
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_4

    const-string p2, "has subscription"

    .line 13
    invoke-static {v0, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchaseList:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p2, 0x0

    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->I0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z

    :cond_5
    if-eqz p1, :cond_7

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->L0(Lcom/allinone/callerid/mvc/controller/MainActivity;J)J

    .line 21
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1001e8

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100311

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->N0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100271

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    new-instance p1, Lcom/allinone/callerid/mvc/controller/MainActivity$k0$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$k0$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$k0;)V

    invoke-static {p1}, Lcom/allinone/callerid/i/a/e/a;->b(Lcom/allinone/callerid/i/a/e/c;)V

    goto :goto_2

    .line 27
    :cond_8
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "no subscription"

    .line 28
    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;->b:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-static {}, Lcom/allinone/callerid/i/a/e/a;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/inapputil/c;->i(Z)V

    .line 2
    :try_start_0
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "inappbilling"

    const-string v0, "\u5185\u8d2d\u670d\u52a1\u521d\u59cb\u5316\u5b8c\u6210"

    .line 3
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
