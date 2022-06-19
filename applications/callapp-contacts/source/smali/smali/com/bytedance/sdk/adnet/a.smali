.class public Lcom/bytedance/sdk/adnet/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/bytedance/sdk/adnet/core/n; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Lcom/bytedance/sdk/adnet/c/b; = null

.field private static d:Z = true

.field private static e:Lcom/bytedance/sdk/adnet/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/adnet/c/b;
    .locals 2

    .line 98
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->c:Lcom/bytedance/sdk/adnet/c/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sITTNetDepend is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/k;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;I)Lcom/bytedance/sdk/adnet/core/l;
    .locals 0

    .line 67
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/adnet/core/k;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;I)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 191
    new-instance v0, Lcom/bytedance/sdk/adnet/a$1;

    const-string v1, "adnet onActivityResume"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/adnet/a$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/e;->b(Lcom/bytedance/sdk/openadsdk/l/g;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Application;Z)V
    .locals 1

    if-eqz p0, :cond_3

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/adnet/c/f;->a(Landroid/content/Context;Z)V

    .line 137
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 139
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 141
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 144
    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    return-void

    .line 134
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tryInitAdTTNet context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/bytedance/sdk/adnet/c/a;)V
    .locals 0

    .line 117
    sput-object p0, Lcom/bytedance/sdk/adnet/a;->e:Lcom/bytedance/sdk/adnet/c/a;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/c/b;)V
    .locals 0

    .line 94
    sput-object p0, Lcom/bytedance/sdk/adnet/a;->c:Lcom/bytedance/sdk/adnet/c/b;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 105
    sput-boolean p0, Lcom/bytedance/sdk/adnet/a;->d:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 72
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "VAdNetSdk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "init adnetsdk default directory error "

    .line 78
    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static b()Z
    .locals 1

    .line 109
    sget-boolean v0, Lcom/bytedance/sdk/adnet/a;->d:Z

    return v0
.end method

.method public static c()V
    .locals 1

    .line 113
    sget-object v0, Lcom/bytedance/sdk/adnet/d/d$a;->a:Lcom/bytedance/sdk/adnet/d/d$a;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/d;->a(Lcom/bytedance/sdk/adnet/d/d$a;)V

    return-void
.end method

.method public static d()Lcom/bytedance/sdk/adnet/c/a;
    .locals 1

    .line 121
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->e:Lcom/bytedance/sdk/adnet/c/a;

    return-object v0
.end method
