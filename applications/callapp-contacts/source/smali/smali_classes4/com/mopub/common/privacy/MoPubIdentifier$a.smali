.class final Lcom/mopub/common/privacy/MoPubIdentifier$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/MoPubIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/privacy/MoPubIdentifier;


# direct methods
.method private constructor <init>(Lcom/mopub/common/privacy/MoPubIdentifier;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$a;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/privacy/MoPubIdentifier;Lcom/mopub/common/privacy/MoPubIdentifier$1;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier$a;-><init>(Lcom/mopub/common/privacy/MoPubIdentifier;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1235
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$a;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    .line 2095
    iget-object v0, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 2099
    iget-object v1, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoSync(Landroid/content/Context;)Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2100
    iget-object v3, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2101
    new-instance v3, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v4, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    iget-object v5, v0, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->limitAdTracking:Z

    invoke-direct {v3, v4, v5, v1}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2103
    :cond_0
    iget-object v1, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    .line 2216
    invoke-static {v1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 2218
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "limit_ad_tracking"

    const/4 v4, -0x1

    .line 2219
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "advertising_id"

    .line 2220
    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eq v3, v4, :cond_2

    .line 2222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 2224
    :goto_0
    iget-object v4, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 2226
    new-instance v5, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v4, v4, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    invoke-direct {v5, v1, v4, v3}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v5

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 2107
    iget-object v1, v3, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    iget-boolean v3, v3, Lcom/mopub/common/privacy/AdvertisingId;->c:Z

    .line 3157
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3158
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3160
    new-instance v4, Lcom/mopub/common/privacy/AdvertisingId;

    invoke-direct {v4, v1, v0, v3}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v4}, Lcom/mopub/common/privacy/MoPubIdentifier;->a(Lcom/mopub/common/privacy/AdvertisingId;)V

    goto :goto_2

    .line 2109
    :cond_3
    iget-object v0, p1, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->a(Lcom/mopub/common/privacy/AdvertisingId;)V

    .line 1236
    :goto_2
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier$a;->a:Lcom/mopub/common/privacy/MoPubIdentifier;

    invoke-static {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->a(Lcom/mopub/common/privacy/MoPubIdentifier;)Z

    return-object v2
.end method
