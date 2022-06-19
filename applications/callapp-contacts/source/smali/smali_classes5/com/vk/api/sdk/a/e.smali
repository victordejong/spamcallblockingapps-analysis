.class public final Lcom/vk/api/sdk/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/api/sdk/auth/VKAuthResult;",
        "",
        "accessToken",
        "Lcom/vk/api/sdk/auth/VKAccessToken;",
        "errorCode",
        "",
        "(Lcom/vk/api/sdk/auth/VKAccessToken;I)V",
        "getAccessToken",
        "()Lcom/vk/api/sdk/auth/VKAccessToken;",
        "getErrorCode",
        "()I",
        "isError",
        "",
        "()Z",
        "isSuccess",
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
.field public final a:Lcom/vk/api/sdk/a/a;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/a/a;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vk/api/sdk/a/e;-><init>(Lcom/vk/api/sdk/a/a;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vk/api/sdk/a/a;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/a/e;->a:Lcom/vk/api/sdk/a/a;

    iput p2, p0, Lcom/vk/api/sdk/a/e;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/api/sdk/a/a;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vk/api/sdk/a/e;-><init>(Lcom/vk/api/sdk/a/a;I)V

    return-void
.end method
