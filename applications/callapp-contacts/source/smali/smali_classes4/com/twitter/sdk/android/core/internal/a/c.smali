.class public final Lcom/twitter/sdk/android/core/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/e;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/e;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/c;->a:Lcom/twitter/sdk/android/core/e;

    return-void
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    move-object v0, p2

    const/4 v1, 0x1

    .line 1084
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1051
    iget-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/c;->a:Lcom/twitter/sdk/android/core/e;

    .line 2063
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "Authorization"

    .line 2064
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-guest-token"

    .line 2065
    invoke-virtual {v1, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 2068
    new-instance v3, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    const-string v4, "bearer "

    const-string v5, ""

    .line 2069
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "bearer"

    invoke-direct {v3, v4, v2, v1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    new-instance v1, Lcom/twitter/sdk/android/core/d;

    invoke-direct {v1, v3}, Lcom/twitter/sdk/android/core/d;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 1052
    :goto_2
    invoke-virtual {p1, v1}, Lcom/twitter/sdk/android/core/e;->a(Lcom/twitter/sdk/android/core/d;)Lcom/twitter/sdk/android/core/d;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_3

    .line 3042
    :cond_3
    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/a;

    .line 1053
    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    :goto_3
    if-eqz p1, :cond_4

    .line 1055
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    .line 3077
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    .line 3078
    invoke-static {p2, p1}, Lcom/twitter/sdk/android/core/internal/a/a;->a(Lokhttp3/Request$Builder;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 3079
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method
