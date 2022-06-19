.class Lcom/callerid/block/main/MainActivity$t;
.super Lcom/callerid/block/inapputil/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "t"
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/main/MainActivity;


# direct methods
.method private constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Lcom/callerid/block/inapputil/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/main/MainActivity$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/main/MainActivity$t;-><init>(Lcom/callerid/block/main/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/callerid/block/inapputil/c;->a(Z)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "inappbilling"

    const-string v0, "onAcknowledgePurchaseSuccess"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/callerid/block/inapputil/c;->d(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

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
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/callerid/block/inapputil/c;->e(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "inappbilling"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSelf:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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
    new-instance v0, Lcom/callerid/block/main/MainActivity$t$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$t$b;-><init>(Lcom/callerid/block/main/MainActivity$t;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->b(Lcom/callerid/block/h/a/b/c;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

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
    .locals 1
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

    if-eqz p1, :cond_3

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

    sget-boolean p3, Lcom/callerid/block/util/w;->a:Z

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "inappbilling"

    invoke-static {v0, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "free_ad_plan_month"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    :cond_2
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "free_ad_plan"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    goto :goto_0

    :cond_3
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
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->K0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/inapputil/GoogleBillingUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1, v1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->E(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "has subscription"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callerid/block/main/MainActivity;->G0(Lcom/callerid/block/main/MainActivity;Z)Z

    new-instance p1, Lcom/callerid/block/main/MainActivity$t$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/main/MainActivity$t$a;-><init>(Lcom/callerid/block/main/MainActivity$t;)V

    invoke-static {p1}, Lcom/callerid/block/h/a/b/a;->b(Lcom/callerid/block/h/a/b/c;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$t;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "no subscription"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/callerid/block/h/a/b/a;->c()V

    :goto_0
    return-void
.end method
