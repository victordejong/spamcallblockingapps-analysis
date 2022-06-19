.class public Lcom/bytedance/sdk/adnet/core/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lcom/bytedance/sdk/adnet/core/k;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/l;
    .locals 1

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lcom/bytedance/sdk/adnet/core/j;

    invoke-direct {p1}, Lcom/bytedance/sdk/adnet/core/j;-><init>()V

    .line 42
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/adnet/core/a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/core/a;-><init>(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V

    invoke-static {p0, v0}, Lcom/bytedance/sdk/adnet/core/k;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/b;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;I)Lcom/bytedance/sdk/adnet/core/l;
    .locals 2

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/bytedance/sdk/adnet/core/j;

    invoke-direct {p1}, Lcom/bytedance/sdk/adnet/core/j;-><init>()V

    .line 47
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "reqQueue"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p0, Lcom/bytedance/sdk/adnet/core/l;

    new-instance v1, Lcom/bytedance/sdk/adnet/core/f;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/core/f;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/bytedance/sdk/adnet/core/a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/core/a;-><init>(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V

    invoke-direct {p0, v1, v0, p2}, Lcom/bytedance/sdk/adnet/core/l;-><init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;I)V

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/l;->a()V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/b;)Lcom/bytedance/sdk/adnet/core/l;
    .locals 2

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "reqQueue"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p0, Lcom/bytedance/sdk/adnet/core/l;

    new-instance v1, Lcom/bytedance/sdk/adnet/core/f;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/core/f;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/adnet/core/l;-><init>(Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/b;)V

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/l;->a()V

    return-object p0
.end method
