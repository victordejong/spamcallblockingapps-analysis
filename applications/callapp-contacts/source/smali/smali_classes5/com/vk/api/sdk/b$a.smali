.class final Lcom/vk/api/sdk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/b;
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
.field final synthetic a:Lcom/vk/api/sdk/internal/a;

.field final synthetic b:Lcom/vk/api/sdk/d;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/internal/a;Lcom/vk/api/sdk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/b$a;->a:Lcom/vk/api/sdk/internal/a;

    iput-object p2, p0, Lcom/vk/api/sdk/b$a;->b:Lcom/vk/api/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/vk/api/sdk/b$a;->a:Lcom/vk/api/sdk/internal/a;

    invoke-static {v0}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/vk/api/sdk/b$a$1;

    invoke-direct {v1, p0, v0}, Lcom/vk/api/sdk/b$a$1;-><init>(Lcom/vk/api/sdk/b$a;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/vk/api/sdk/o;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lcom/vk/api/sdk/b$a$2;

    invoke-direct {v1, p0, v0}, Lcom/vk/api/sdk/b$a$2;-><init>(Lcom/vk/api/sdk/b$a;Ljava/lang/Exception;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/vk/api/sdk/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method
