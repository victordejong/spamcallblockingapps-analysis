.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V

    return-void
.end method
