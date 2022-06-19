.class final Lcom/twitter/sdk/android/core/identity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/core/identity/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/c$a;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/core/identity/c$a;

.field b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field final c:Landroid/webkit/WebView;

.field final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

.field private final f:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/c$a;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Landroid/widget/ProgressBar;

    .line 59
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/c;->c:Landroid/webkit/WebView;

    .line 60
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/c;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 61
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 62
    iput-object p5, p0, Lcom/twitter/sdk/android/core/identity/c;->a:Lcom/twitter/sdk/android/core/identity/c$a;

    return-void
.end method

.method private a()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 180
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V
    .locals 2

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "auth_error"

    .line 102
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    iget-object p2, p0, Lcom/twitter/sdk/android/core/identity/c;->a:Lcom/twitter/sdk/android/core/identity/c$a;

    invoke-interface {p2, p1, v0}, Lcom/twitter/sdk/android/core/identity/c$a;->a(ILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 1124
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "OAuth web view completed successfully"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_verifier"

    .line 1126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object p1

    const-string v2, "Converting the request token to an access token."

    invoke-interface {p1, v1, v2}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 1148
    new-instance v1, Lcom/twitter/sdk/android/core/identity/c$2;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/identity/c$2;-><init>(Lcom/twitter/sdk/android/core/identity/c;)V

    .line 1131
    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {p1, v1, v2, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;)V

    goto :goto_0

    .line 1138
    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to get authorization, bundle incomplete "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 1140
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v1, "Failed to get authorization, bundle incomplete"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->a()V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->b()V

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/identity/i;)V
    .locals 3

    .line 1173
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "OAuth web view completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1174
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    invoke-direct {p1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    .line 202
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->a()V

    return-void
.end method
