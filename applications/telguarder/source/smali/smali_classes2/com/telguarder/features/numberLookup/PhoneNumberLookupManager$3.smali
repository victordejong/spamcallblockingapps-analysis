.class Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PhoneNumberLookupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lookupPhoneNumberOnBackend(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

.field final synthetic val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 234
    invoke-static {}, Lcom/telguarder/features/numberLookup/SearchManager;->getInstance()Lcom/telguarder/features/numberLookup/SearchManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$500(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Lcom/telguarder/helpers/backend/BackendCallbackListener;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/telguarder/features/numberLookup/SearchManager;->getNumberLookupResultsForCallWidget(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    .line 235
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$600(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$600(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/backend/NetworkHelper;->unregisterNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    return-void
.end method
