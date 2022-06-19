.class public final Lcom/vk/api/sdk/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/e/a/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R \u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/log/DefaultApiLogger;",
        "Lcom/vk/api/sdk/utils/log/Logger;",
        "logLevel",
        "Lkotlin/Lazy;",
        "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;",
        "tag",
        "",
        "(Lkotlin/Lazy;Ljava/lang/String;)V",
        "getLogLevel",
        "()Lkotlin/Lazy;",
        "setLogLevel",
        "(Lkotlin/Lazy;)V",
        "getTag",
        "()Ljava/lang/String;",
        "checkLevel",
        "",
        "messageLevel",
        "log",
        "",
        "level",
        "msg",
        "err",
        "",
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
.field private a:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vk/api/sdk/e/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/Lazy;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vk/api/sdk/e/a/c$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/e/a/a;->a:Lkotlin/Lazy;

    iput-object p2, p0, Lcom/vk/api/sdk/e/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/e/a/c$a;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/vk/api/sdk/e/a/a;->a:Lkotlin/Lazy;

    return-object v0
.end method

.method public final a(Lcom/vk/api/sdk/e/a/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2029
    iget-object v0, p0, Lcom/vk/api/sdk/e/a/a;->a:Lkotlin/Lazy;

    .line 1044
    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/e/a/c$a;

    invoke-virtual {v0}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 34
    :cond_1
    sget-object v0, Lcom/vk/api/sdk/e/a/b;->a:[I

    invoke-virtual {p1}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 5030
    :cond_2
    iget-object p1, p0, Lcom/vk/api/sdk/e/a/a;->b:Ljava/lang/String;

    .line 39
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    .line 4030
    :cond_3
    iget-object p1, p0, Lcom/vk/api/sdk/e/a/a;->b:Ljava/lang/String;

    .line 38
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
