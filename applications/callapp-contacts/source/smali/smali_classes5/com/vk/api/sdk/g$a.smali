.class final Lcom/vk/api/sdk/g$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/g;-><init>(Lcom/vk/api/sdk/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vk/api/sdk/c/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/api/sdk/g;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/g$a;->a:Lcom/vk/api/sdk/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1050
    new-instance v0, Lcom/vk/api/sdk/c/c;

    new-instance v1, Lcom/vk/api/sdk/c/d;

    iget-object v2, p0, Lcom/vk/api/sdk/g$a;->a:Lcom/vk/api/sdk/g;

    .line 2039
    iget-object v2, v2, Lcom/vk/api/sdk/g;->c:Lcom/vk/api/sdk/e;

    .line 1050
    invoke-direct {v1, v2}, Lcom/vk/api/sdk/c/d;-><init>(Lcom/vk/api/sdk/e;)V

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/c/c;-><init>(Lcom/vk/api/sdk/c/d;)V

    return-object v0
.end method
