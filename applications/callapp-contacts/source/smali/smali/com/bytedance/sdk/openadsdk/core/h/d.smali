.class public Lcom/bytedance/sdk/openadsdk/core/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected static a(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 59
    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v2, p0, :cond_1

    .line 61
    :try_start_1
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_8

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "switch status changed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdkSwitch"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->b()V

    return-void

    .line 75
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/d/c;->b()V

    .line 78
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->e()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->e()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/d/c;->b()V

    .line 81
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/d/c;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    :cond_5
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->g()Lcom/bytedance/sdk/openadsdk/m/a;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->g()Lcom/bytedance/sdk/openadsdk/m/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/m/a;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :cond_6
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/i/b/a;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_7
    return-void

    :catchall_4
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 42
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
