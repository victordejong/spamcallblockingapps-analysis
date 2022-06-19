.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    new-instance v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;)V

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method
