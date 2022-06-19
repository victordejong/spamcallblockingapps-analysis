.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Landroid/app/Activity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    .line 270
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 271
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

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

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-static {v0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/twitter/sdk/android/core/TwitterAuthToken;)Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://api.twitter.com/oauth/authorize?oauth_token="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->c(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/StringBuilder;)V

    .line 257
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->a:Landroid/app/Activity;

    new-instance v2, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2$1;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2$1;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;)V

    iget-object v5, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
