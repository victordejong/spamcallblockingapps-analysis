.class final Lcom/facebook/a/h$1;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/h;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/a/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/a/h;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/a/h$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/a/h$1;->b:Lcom/facebook/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 133
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 135
    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "com.facebook.core.Core"

    aput-object v0, v4, v1

    const-string/jumbo v0, "com.facebook.login.Login"

    aput-object v0, v4, v8

    const-string/jumbo v0, "com.facebook.share.Share"

    aput-object v0, v4, v6

    const-string/jumbo v0, "com.facebook.places.Places"

    aput-object v0, v4, v7

    const-string/jumbo v0, "com.facebook.messenger.Messenger"

    aput-object v0, v4, v9

    const/4 v0, 0x5

    const-string/jumbo v2, "com.facebook.applinks.AppLinks"

    aput-object v2, v4, v0

    const/4 v0, 0x6

    const-string/jumbo v2, "com.facebook.marketing.Marketing"

    aput-object v2, v4, v0

    const/4 v0, 0x7

    const-string/jumbo v2, "com.facebook.all.All"

    aput-object v2, v4, v0

    const/16 v0, 0x8

    const-string/jumbo v2, "com.android.billingclient.api.BillingClient"

    aput-object v2, v4, v0

    const/16 v0, 0x9

    const-string/jumbo v2, "com.android.vending.billing.IInAppBillingService"

    aput-object v2, v4, v0

    .line 149
    const/16 v0, 0xa

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "core_lib_included"

    aput-object v0, v5, v1

    const-string/jumbo v0, "login_lib_included"

    aput-object v0, v5, v8

    const-string/jumbo v0, "share_lib_included"

    aput-object v0, v5, v6

    const-string/jumbo v0, "places_lib_included"

    aput-object v0, v5, v7

    const-string/jumbo v0, "messenger_lib_included"

    aput-object v0, v5, v9

    const/4 v0, 0x5

    const-string/jumbo v2, "applinks_lib_included"

    aput-object v2, v5, v0

    const/4 v0, 0x6

    const-string/jumbo v2, "marketing_lib_included"

    aput-object v2, v5, v0

    const/4 v0, 0x7

    const-string/jumbo v2, "all_lib_included"

    aput-object v2, v5, v0

    const/16 v0, 0x8

    const-string/jumbo v2, "billing_client_lib_included"

    aput-object v2, v5, v0

    const/16 v0, 0x9

    const-string/jumbo v2, "billing_service_lib_included"

    aput-object v2, v5, v0

    .line 164
    array-length v0, v4

    array-length v2, v5

    if-eq v0, v2, :cond_0

    .line 165
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Number of class names and key names should match"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 170
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_1

    .line 171
    aget-object v6, v4, v0

    .line 172
    aget-object v7, v5, v0

    .line 175
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 176
    const/4 v6, 0x1

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    shl-int v6, v8, v0

    or-int/2addr v2, v6

    .line 170
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/h$1;->a:Landroid/content/Context;

    const-string/jumbo v4, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    const-string/jumbo v4, "kitsBitmask"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 185
    if-eq v1, v2, :cond_2

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "kitsBitmask"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    iget-object v0, p0, Lcom/facebook/a/h$1;->b:Lcom/facebook/a/h;

    const-string/jumbo v1, "fb_sdk_initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 189
    :cond_2
    return-void

    .line 178
    :catch_0
    move-exception v6

    goto :goto_1
.end method
