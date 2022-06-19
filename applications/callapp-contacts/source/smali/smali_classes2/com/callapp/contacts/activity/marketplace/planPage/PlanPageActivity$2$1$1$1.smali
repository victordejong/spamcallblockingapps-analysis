.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/android/billingclient/api/k;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;Landroid/view/ViewGroup;Lcom/android/billingclient/api/k;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->b:Lcom/android/billingclient/api/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 362
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->a:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 363
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 365
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;->c:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1$1;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method
