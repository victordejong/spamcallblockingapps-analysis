.class Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PhoneNumberLookupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->internalLookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

.field final synthetic val$adPreload:Z

.field final synthetic val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field final synthetic val$completionHandler:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    iput-boolean p4, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$adPreload:Z

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iput-object p6, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$completionHandler:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    iget-boolean v3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$adPreload:Z

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iget-object v5, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$completionHandler:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$000(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 6

    .line 143
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$100(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$callType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    iget-boolean v3, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$adPreload:Z

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$resultFromCache:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iget-object v5, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$completionHandler:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$000(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;ZLcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/Runnable;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$1;->this$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/backend/NetworkHelper;->unregisterNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method
