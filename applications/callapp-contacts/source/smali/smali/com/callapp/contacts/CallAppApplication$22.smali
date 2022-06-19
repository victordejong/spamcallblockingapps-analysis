.class Lcom/callapp/contacts/CallAppApplication$22;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$22;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 1293
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$22;->a:Lcom/callapp/contacts/CallAppApplication;

    new-instance v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v2, Lcom/callapp/contacts/CallAppApplication$22$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/CallAppApplication$22$1;-><init>(Lcom/callapp/contacts/CallAppApplication$22;)V

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method
