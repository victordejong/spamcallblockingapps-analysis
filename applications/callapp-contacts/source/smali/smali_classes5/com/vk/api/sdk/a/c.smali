.class public final Lcom/vk/api/sdk/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/a/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ(\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0016H\u0002J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/vk/api/sdk/auth/VKAuthManager;",
        "",
        "keyValueStorage",
        "Lcom/vk/api/sdk/VKKeyValueStorage;",
        "(Lcom/vk/api/sdk/VKKeyValueStorage;)V",
        "clearAccessToken",
        "",
        "getCurrentToken",
        "Lcom/vk/api/sdk/auth/VKAccessToken;",
        "isLoggedIn",
        "",
        "login",
        "activity",
        "Landroid/app/Activity;",
        "scopes",
        "",
        "Lcom/vk/api/sdk/auth/VKScope;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "callback",
        "Lcom/vk/api/sdk/auth/VKAuthCallback;",
        "processResult",
        "Lcom/vk/api/sdk/auth/VKAuthResult;",
        "result",
        "startAuthActivity",
        "params",
        "Lcom/vk/api/sdk/auth/VKAuthParams;",
        "startInternalAuthActivity",
        "Companion",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final b:Lcom/vk/api/sdk/a/c$a;


# instance fields
.field public final a:Lcom/vk/api/sdk/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/a/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/a/c;->b:Lcom/vk/api/sdk/a/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/vk/api/sdk/k;)V
    .locals 1

    const-string v0, "keyValueStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/a/c;->a:Lcom/vk/api/sdk/k;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/vk/api/sdk/a/e;
    .locals 5

    const-string v0, "extra-token-data"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/vk/api/sdk/e/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 92
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "key"

    .line 93
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    const-string v0, "error"

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 101
    :try_start_0
    new-instance v0, Lcom/vk/api/sdk/a/e;

    new-instance v1, Lcom/vk/api/sdk/a/a;

    invoke-direct {v1, p0}, Lcom/vk/api/sdk/a/a;-><init>(Ljava/util/Map;)V

    const/4 p0, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/vk/api/sdk/a/e;-><init>(Lcom/vk/api/sdk/a/a;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 103
    const-class v0, Lcom/vk/api/sdk/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Throwable;

    const-string v1, "Failed to get VK token"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-object v2
.end method

.method public static a(Landroid/app/Activity;Lcom/vk/api/sdk/a/d;)V
    .locals 11

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.action.SDK_AUTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.vkontakte.android"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1050
    iget v2, p1, Lcom/vk/api/sdk/a/d;->b:I

    const-string v3, "client_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "revoke"

    const/4 v3, 0x1

    .line 1051
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1052
    iget-object v2, p1, Lcom/vk/api/sdk/a/d;->a:Ljava/util/Set;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const-string v2, ","

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    invoke-static/range {v3 .. v10}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scope"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object p1, p1, Lcom/vk/api/sdk/a/d;->c:Ljava/lang/String;

    const-string v2, "redirect_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x11a

    .line 52
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/vk/api/sdk/a/d;)V
    .locals 3

    .line 56
    sget-object v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1235
    invoke-virtual {p1}, Lcom/vk/api/sdk/a/d;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "vk_auth_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent(activity, VKWebVi\u2026ARAMS, params.toBundle())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x11a

    .line 1236
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vk/api/sdk/a/a;
    .locals 1

    .line 116
    sget-object v0, Lcom/vk/api/sdk/a/a;->j:Lcom/vk/api/sdk/a/a$a;

    iget-object v0, p0, Lcom/vk/api/sdk/a/c;->a:Lcom/vk/api/sdk/k;

    invoke-static {v0}, Lcom/vk/api/sdk/a/a$a;->b(Lcom/vk/api/sdk/k;)Lcom/vk/api/sdk/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 120
    sget-object v0, Lcom/vk/api/sdk/a/a;->j:Lcom/vk/api/sdk/a/a$a;

    iget-object v0, p0, Lcom/vk/api/sdk/a/c;->a:Lcom/vk/api/sdk/k;

    invoke-static {v0}, Lcom/vk/api/sdk/a/a$a;->a(Lcom/vk/api/sdk/k;)V

    return-void
.end method
