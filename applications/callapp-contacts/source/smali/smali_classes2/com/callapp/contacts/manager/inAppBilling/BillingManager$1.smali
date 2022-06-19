.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

.field final synthetic b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$1;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$1;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    if-eqz v1, :cond_0

    .line 221
    invoke-interface {v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;->a()V

    .line 223
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
