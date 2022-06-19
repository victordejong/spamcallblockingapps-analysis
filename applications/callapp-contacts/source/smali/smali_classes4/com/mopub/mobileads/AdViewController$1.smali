.class final Lcom/mopub/mobileads/AdViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/network/AdLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$1;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$1;->a:Lcom/mopub/mobileads/AdViewController;

    .line 1214
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 1221
    move-object v2, p1

    check-cast v2, Lcom/mopub/network/MoPubNetworkError;

    .line 1222
    invoke-virtual {v2}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1223
    invoke-virtual {v2}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/mopub/mobileads/AdViewController;->g:Ljava/lang/Integer;

    .line 1227
    :cond_0
    iget-object v2, v0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    .line 1239
    iget-object v3, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 1243
    sget-object v1, Lcom/mopub/mobileads/AdViewController$4;->a:[I

    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 1251
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 1249
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->TOO_MANY_REQUESTS:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 1247
    :cond_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 1245
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    :cond_4
    if-nez v3, :cond_6

    .line 1256
    invoke-static {v2}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1257
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 1259
    :cond_5
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 1262
    :cond_6
    iget-object p1, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget p1, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x190

    if-lt p1, v1, :cond_7

    .line 1263
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 1266
    :cond_7
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 1228
    :goto_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne p1, v1, :cond_8

    .line 1229
    iget v1, v0, Lcom/mopub/mobileads/AdViewController;->d:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/mopub/mobileads/AdViewController;->d:I

    .line 1232
    :cond_8
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$1;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/network/AdResponse;)V

    return-void
.end method
