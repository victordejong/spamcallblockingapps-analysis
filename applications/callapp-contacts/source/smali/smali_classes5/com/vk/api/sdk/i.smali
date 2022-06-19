.class public interface abstract Lcom/vk/api/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/i$a;,
        Lcom/vk/api/sdk/i$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u0013\u0014J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H&J\u001e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007H&J\u001e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKApiValidationHandler;",
        "",
        "handleCaptcha",
        "",
        "img",
        "",
        "cb",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;",
        "handleConfirm",
        "confirmationText",
        "",
        "handleValidation",
        "validationUrl",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        "tryToHandleException",
        "ex",
        "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
        "apiManager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "Callback",
        "Credentials",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;Lcom/vk/api/sdk/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vk/api/sdk/exceptions/VKApiExecutionException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/vk/api/sdk/i$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/i$a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Lcom/vk/api/sdk/i$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/i$a<",
            "Lcom/vk/api/sdk/i$b;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Lcom/vk/api/sdk/i$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/i$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
