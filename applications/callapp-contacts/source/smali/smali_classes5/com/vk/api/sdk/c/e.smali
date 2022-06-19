.class public final Lcom/vk/api/sdk/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/c/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0017B\u000f\u0008\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;",
        "",
        "b",
        "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;",
        "(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;)V",
        "allowNoAuth",
        "",
        "getAllowNoAuth",
        "()Z",
        "args",
        "",
        "",
        "getArgs",
        "()Ljava/util/Map;",
        "method",
        "getMethod",
        "()Ljava/lang/String;",
        "tag",
        "Lcom/vk/api/sdk/okhttp/RequestTag;",
        "getTag",
        "()Lcom/vk/api/sdk/okhttp/RequestTag;",
        "version",
        "getVersion",
        "Builder",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/vk/api/sdk/c/f;

.field private final e:Z


# direct methods
.method protected constructor <init>(Lcom/vk/api/sdk/c/e$a;)V
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iget-object v0, p1, Lcom/vk/api/sdk/c/e$a;->a:Ljava/lang/String;

    .line 69
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p1, Lcom/vk/api/sdk/c/e$a;->b:Ljava/lang/String;

    .line 70
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    iget-object v0, p1, Lcom/vk/api/sdk/c/e$a;->a:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/vk/api/sdk/c/e;->a:Ljava/lang/String;

    .line 2032
    iget-object v0, p1, Lcom/vk/api/sdk/c/e$a;->b:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/vk/api/sdk/c/e;->b:Ljava/lang/String;

    .line 2034
    iget-object v0, p1, Lcom/vk/api/sdk/c/e$a;->c:Ljava/util/Map;

    .line 73
    iput-object v0, p0, Lcom/vk/api/sdk/c/e;->c:Ljava/util/Map;

    .line 2036
    iget-object v0, p1, Lcom/vk/api/sdk/c/e$a;->d:Lcom/vk/api/sdk/c/f;

    .line 74
    iput-object v0, p0, Lcom/vk/api/sdk/c/e;->d:Lcom/vk/api/sdk/c/f;

    .line 2038
    iget-boolean p1, p1, Lcom/vk/api/sdk/c/e$a;->e:Z

    .line 75
    iput-boolean p1, p0, Lcom/vk/api/sdk/c/e;->e:Z

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "method is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
