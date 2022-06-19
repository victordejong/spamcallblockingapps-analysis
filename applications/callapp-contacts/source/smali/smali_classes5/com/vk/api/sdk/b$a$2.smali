.class final Lcom/vk/api/sdk/b$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/api/sdk/b$a;

.field final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/b$a;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/b$a$2;->a:Lcom/vk/api/sdk/b$a;

    iput-object p2, p0, Lcom/vk/api/sdk/b$a$2;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/vk/api/sdk/b$a$2;->b:Ljava/lang/Exception;

    instance-of v1, v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    invoke-virtual {v0}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/vk/api/sdk/b;->b:Lcom/vk/api/sdk/b;

    invoke-static {}, Lcom/vk/api/sdk/b;->d()V

    :cond_0
    return-void
.end method
