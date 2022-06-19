.class final Lcom/vk/api/sdk/c/c$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/c/c;-><init>(Lcom/vk/api/sdk/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vk/api/sdk/m;",
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
        "Lcom/vk/api/sdk/VKOkHttpProvider;",
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
.field final synthetic a:Lcom/vk/api/sdk/c/c;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/c/c$c;->a:Lcom/vk/api/sdk/c/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1050
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/vk/api/sdk/c/c$c;->a:Lcom/vk/api/sdk/c/c;

    .line 2046
    iget-object v1, v0, Lcom/vk/api/sdk/c/c;->f:Lcom/vk/api/sdk/c/d;

    .line 3045
    iget-object v1, v1, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 4045
    iget-object v1, v1, Lcom/vk/api/sdk/e;->f:Lcom/vk/api/sdk/m;

    .line 1053
    invoke-static {v0, v1}, Lcom/vk/api/sdk/c/c;->a(Lcom/vk/api/sdk/c/c;Lcom/vk/api/sdk/m;)V

    .line 1054
    iget-object v0, p0, Lcom/vk/api/sdk/c/c$c;->a:Lcom/vk/api/sdk/c/c;

    .line 4046
    iget-object v0, v0, Lcom/vk/api/sdk/c/c;->f:Lcom/vk/api/sdk/c/d;

    .line 5045
    iget-object v0, v0, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 6045
    iget-object v0, v0, Lcom/vk/api/sdk/e;->f:Lcom/vk/api/sdk/m;

    return-object v0

    .line 1051
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
