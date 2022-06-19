.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 0

    .line 366
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b()V

    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    .line 356
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    .line 1127
    iget-object v0, v0, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 356
    new-instance v1, Lcom/twitter/sdk/android/core/t;

    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v3, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    iget-object v4, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v3, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-wide v3, v3, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->userId:J

    iget-object v5, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v5, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->userName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/sdk/android/core/t;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    .line 357
    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/m;->a(Lcom/twitter/sdk/android/core/l;)V

    .line 358
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b()V

    return-void
.end method
