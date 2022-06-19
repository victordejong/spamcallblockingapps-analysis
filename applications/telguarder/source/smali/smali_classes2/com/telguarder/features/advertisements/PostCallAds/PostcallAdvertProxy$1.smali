.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PostcallAdvertProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadWhenNetAvailable(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

.field final synthetic val$advrt:Lcom/telguarder/features/advertisements/Advert;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iBackup:Z


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->val$advrt:Lcom/telguarder/features/advertisements/Advert;

    iput-boolean p4, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->val$iBackup:Z

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 110
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->val$advrt:Lcom/telguarder/features/advertisements/Advert;

    iget-boolean v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->val$iBackup:Z

    invoke-static {p1, v0, v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;Z)V

    .line 111
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/backend/NetworkHelper;->unregisterNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    return-void
.end method
