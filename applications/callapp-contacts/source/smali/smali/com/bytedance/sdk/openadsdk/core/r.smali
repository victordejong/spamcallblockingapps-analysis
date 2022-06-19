.class public Lcom/bytedance/sdk/openadsdk/core/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/r;


# instance fields
.field private b:Lcom/pgl/sys/ces/d/b;

.field private volatile c:Z

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->c()Lcom/pgl/sys/ces/d/a;

    move-result-object v1

    const-string v2, "df979cdb-05a7-448c-bece-92d5005a1247"

    invoke-static {v0, v2, v1}, Lcom/pgl/sys/ces/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/pgl/sys/ces/d/a;)Lcom/pgl/sys/ces/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/pgl/sys/ces/d/b;

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/pgl/sys/ces/d/b;

    invoke-interface {v1, v0}, Lcom/pgl/sys/ces/d/b;->setCustomInfo(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/r;
    .locals 2

    .line 140
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    if-nez v0, :cond_1

    .line 141
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/r;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/r;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    .line 145
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 147
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    return-object v0
.end method

.method private c()Lcom/pgl/sys/ces/d/a;
    .locals 1

    .line 75
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/r$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/r;)V

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, ":"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 195
    array-length v0, p1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 196
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "00"

    .line 197
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/pgl/sys/ces/d/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/pgl/sys/ces/d/b;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 128
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/pgl/sys/ces/d/b;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/d/b;->setCustomInfo(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/pgl/sys/ces/d/b;

    invoke-interface {v1}, Lcom/pgl/sys/ces/d/b;->pullSg()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/r;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/r;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/pgl/sys/ces/d/b;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/d/b;->reportNow(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/pgl/sys/ces/d/b;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/d/b;->pullVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
