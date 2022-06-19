.class public final Lcom/vk/api/sdk/e/e;
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "threadLocal",
        "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;",
        "T",
        "factory",
        "Lkotlin/Function0;",
        "libapi-sdk-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;)Lcom/vk/api/sdk/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lcom/vk/api/sdk/e/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/vk/api/sdk/e/d;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/e/d;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcom/vk/api/sdk/e/c;

    return-object v0
.end method
