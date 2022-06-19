.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->h(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->b:Lcom/android/billingclient/api/k;

    invoke-virtual {v2}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

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

    .line 388
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->a:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 389
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/i;

    .line 374
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "premium_recommended_05_2020"

    const-string v1, "premium_recommended"

    const-string v2, "callapp_premium_2_05_2020"

    const-string v3, "callapp_premium_2"

    const-string v4, "2016onetime"

    const-string v5, "2016onetime_05_2020"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 375
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_0
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

    .line 383
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->i(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V

    return-void
.end method
