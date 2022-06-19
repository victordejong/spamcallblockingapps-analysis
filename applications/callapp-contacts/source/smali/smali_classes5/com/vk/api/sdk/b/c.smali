.class public abstract Lcom/vk/api/sdk/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0008\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00020\nH&\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "T",
        "",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "(Lcom/vk/api/sdk/VKApiManager;)V",
        "getManager",
        "()Lcom/vk/api/sdk/VKApiManager;",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "logDebug",
        "",
        "msg",
        "",
        "t",
        "",
        "logWarning",
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
.field private final a:Lcom/vk/api/sdk/g;


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/g;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/b/c;->a:Lcom/vk/api/sdk/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vk/api/sdk/g;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/vk/api/sdk/b/c;->a:Lcom/vk/api/sdk/g;

    return-object v0
.end method

.method public abstract a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/b/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/vk/api/sdk/b/c;->a:Lcom/vk/api/sdk/g;

    .line 1039
    iget-object v0, v0, Lcom/vk/api/sdk/g;->c:Lcom/vk/api/sdk/e;

    .line 1046
    iget-object v0, v0, Lcom/vk/api/sdk/e;->g:Lcom/vk/api/sdk/e/a/c;

    .line 34
    sget-object v1, Lcom/vk/api/sdk/e/a/c$a;->DEBUG:Lcom/vk/api/sdk/e/a/c$a;

    invoke-interface {v0, v1, p1, p2}, Lcom/vk/api/sdk/e/a/c;->a(Lcom/vk/api/sdk/e/a/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/vk/api/sdk/b/c;->a:Lcom/vk/api/sdk/g;

    .line 2039
    iget-object v0, v0, Lcom/vk/api/sdk/g;->c:Lcom/vk/api/sdk/e;

    .line 2046
    iget-object v0, v0, Lcom/vk/api/sdk/e;->g:Lcom/vk/api/sdk/e/a/c;

    .line 35
    sget-object v1, Lcom/vk/api/sdk/e/a/c$a;->WARNING:Lcom/vk/api/sdk/e/a/c$a;

    invoke-interface {v0, v1, p1, p2}, Lcom/vk/api/sdk/e/a/c;->a(Lcom/vk/api/sdk/e/a/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
