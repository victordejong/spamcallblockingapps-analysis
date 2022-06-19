.class public final Lcom/facebook/internal/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0017\u00a8\u0006\u0007"
    }
    d2 = {
        "com/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1",
        "Lcom/android/installreferrer/api/InstallReferrerStateListener;",
        "onInstallReferrerServiceDisconnected",
        "",
        "onInstallReferrerSetupFinished",
        "responseCode",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field final synthetic b:Lcom/facebook/internal/u$a;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/facebook/internal/u$a;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/facebook/internal/u$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p2, p0, Lcom/facebook/internal/u$b;->b:Lcom/facebook/internal/u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    :try_start_0
    sget-object p1, Lcom/facebook/internal/u;->a:Lcom/facebook/internal/u;

    invoke-static {}, Lcom/facebook/internal/u;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    .line 52
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/facebook/internal/u$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    const-string v0, "referrerClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    const-string v0, "referrerClient.installReferrer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 58
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "fb"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 2138
    invoke-static {v0, v1, v2}, Lkotlin/h/p;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "facebook"

    check-cast v1, Ljava/lang/CharSequence;

    .line 3138
    invoke-static {v0, v1, v2}, Lkotlin/h/p;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/facebook/internal/u$b;->b:Lcom/facebook/internal/u$a;

    invoke-interface {v0, p1}, Lcom/facebook/internal/u$a;->a(Ljava/lang/String;)V

    .line 62
    :cond_4
    sget-object p1, Lcom/facebook/internal/u;->a:Lcom/facebook/internal/u;

    invoke-static {}, Lcom/facebook/internal/u;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    return-void
.end method
