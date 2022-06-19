.class public abstract Lcom/vk/api/sdk/ui/VKBaseAuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/ui/VKBaseAuthActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH$J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH$J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tH$J\u0012\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0012\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\u0014\u001a\u00020\u0007H\u0014J\u0008\u0010\u0015\u001a\u00020\u0007H\u0014J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0012H\u0014J\u001a\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vk/api/sdk/ui/VKBaseAuthActivity;",
        "Landroid/app/Activity;",
        "()V",
        "authWasStarted",
        "",
        "isWaitingForAuthResult",
        "finish",
        "",
        "handleRedirectUri",
        "Landroid/content/Intent;",
        "redirectUri",
        "Landroid/net/Uri;",
        "handleStartAuth",
        "oauthUri",
        "isIntentWithAuthRequest",
        "intent",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "processIntent",
        "allowRedirectHandle",
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
.field public static final a:Lcom/vk/api/sdk/ui/VKBaseAuthActivity$a;


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->a:Lcom/vk/api/sdk/ui/VKBaseAuthActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iget-boolean v0, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->c:Z

    .line 50
    iput-boolean p1, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->b:Z

    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->finish()V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->c()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->finish()V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->c:Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()Landroid/content/Intent;
.end method

.method public finish()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, v0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->overridePendingTransition(II)V

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v1, "VK_waitingForAuthResult"

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->c:Z

    .line 28
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->a(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->a(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->b:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    iget-boolean v0, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->setResult(I)V

    .line 41
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    iget-boolean v0, p0, Lcom/vk/api/sdk/ui/VKBaseAuthActivity;->c:Z

    const-string v1, "VK_waitingForAuthResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
