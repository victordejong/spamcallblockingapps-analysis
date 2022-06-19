.class public final Lcom/vk/api/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/i;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nH\u0016J\u001e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00130\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKDefaultValidationHandler;",
        "Lcom/vk/api/sdk/VKApiValidationHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "checkCaptchaActivity",
        "",
        "cb",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;",
        "",
        "handleCaptcha",
        "img",
        "handleConfirm",
        "confirmationText",
        "",
        "handleValidation",
        "validationUrl",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;Lcom/vk/api/sdk/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vk/api/sdk/exceptions/VKApiExecutionException;
        }
    .end annotation

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "apiManager"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9050
    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/vk/api/sdk/i$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/i$a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "img"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cb"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;

    iget-object v1, p0, Lcom/vk/api/sdk/j;->a:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    new-instance v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity$a$a;

    invoke-direct {v0, v1, p1}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$a$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/vk/api/sdk/o;->a(Ljava/lang/Runnable;)V

    .line 42
    sget-object p1, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->a()V

    .line 2048
    sget-object p1, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;

    .line 2154
    invoke-static {}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2049
    sget-object p1, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->a:Lcom/vk/api/sdk/ui/VKCaptchaActivity$a;

    .line 3154
    invoke-static {}, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->a()Ljava/lang/String;

    move-result-object p1

    .line 2049
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/vk/api/sdk/i$a;->a(Ljava/lang/Object;)V

    return-void

    .line 4055
    :cond_0
    iget-object p1, p2, Lcom/vk/api/sdk/i$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/vk/api/sdk/i$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/i$a<",
            "Lcom/vk/api/sdk/i$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "validationUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cb"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    const/4 v1, 0x0

    .line 6231
    invoke-static {v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a(Lcom/vk/api/sdk/i$b;)V

    .line 67
    sget-object v2, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    iget-object v2, p0, Lcom/vk/api/sdk/j;->a:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6240
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "vk_validation_url"

    .line 6241
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent(context, VKWebVie\u2026ATION_URL, validationUrl)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6242
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    sget-object p1, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->a()V

    .line 71
    sget-object p1, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    .line 7231
    invoke-static {}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a()Lcom/vk/api/sdk/i$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p2, p1}, Lcom/vk/api/sdk/i$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 8055
    :cond_0
    iget-object p1, p2, Lcom/vk/api/sdk/i$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    :goto_0
    sget-object p1, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$a;

    .line 8231
    invoke-static {v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->a(Lcom/vk/api/sdk/i$b;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/vk/api/sdk/i$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/i$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "confirmationText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a:Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;

    const/4 v0, 0x0

    .line 4078
    invoke-static {v0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a(Z)V

    .line 57
    sget-object v1, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a:Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;

    iget-object v1, p0, Lcom/vk/api/sdk/j;->a:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4083
    new-instance v2, Lcom/vk/api/sdk/ui/VKConfirmationActivity$a$a;

    invoke-direct {v2, v1, p1}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$a$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/vk/api/sdk/o;->a(Ljava/lang/Runnable;)V

    .line 59
    sget-object p1, Lcom/vk/api/sdk/e/i;->a:Lcom/vk/api/sdk/e/i;

    invoke-static {}, Lcom/vk/api/sdk/e/i;->a()V

    .line 61
    sget-object p1, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a:Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;

    .line 5078
    invoke-static {}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a()Z

    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/vk/api/sdk/i$a;->a(Ljava/lang/Object;)V

    .line 62
    sget-object p1, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a:Lcom/vk/api/sdk/ui/VKConfirmationActivity$a;

    .line 6078
    invoke-static {v0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->a(Z)V

    return-void
.end method
