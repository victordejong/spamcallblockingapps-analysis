.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;->b:Lcom/android/billingclient/api/k;

    invoke-virtual {v2}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subs"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 444
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;->a:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 445
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/i;

    .line 429
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "monthly_03_05_2020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yearly_03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yearly_recommended_05_2020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "monthly_recommended_05_2020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "monthly_03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yearly_recommended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "monthly_recommended"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 431
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 439
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->i(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V

    return-void
.end method
