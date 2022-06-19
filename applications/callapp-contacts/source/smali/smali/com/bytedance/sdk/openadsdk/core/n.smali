.class public Lcom/bytedance/sdk/openadsdk/core/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/n$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/o<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Lcom/bytedance/sdk/openadsdk/m/a;

.field private static volatile f:Lcom/bytedance/sdk/openadsdk/i/b/a;

.field private static volatile g:Landroid/content/Context;

.field private static volatile h:Lcom/bytedance/sdk/openadsdk/core/h/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Landroid/content/Context;
    .locals 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 54
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/content/Context;)V

    .line 56
    :cond_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 178
    new-instance p2, Lcom/bytedance/sdk/openadsdk/d/o;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/d/o;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/h$b;->a()Lcom/bytedance/sdk/openadsdk/d/h$b;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/h$b;->b()Lcom/bytedance/sdk/openadsdk/d/h$b;

    move-result-object v0

    .line 182
    new-instance p2, Lcom/bytedance/sdk/openadsdk/d/m;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/d/m;-><init>(Landroid/content/Context;)V

    .line 184
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/d/h$a;

    move-result-object v1

    .line 185
    new-instance v9, Lcom/bytedance/sdk/openadsdk/d/c;

    const/4 v10, 0x0

    new-instance v11, Lcom/bytedance/sdk/openadsdk/d/p;

    const/4 v6, 0x0

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/d/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;)V

    move-object v2, v9

    move-object v3, p2

    move-object v4, v10

    move-object v5, v0

    move-object v6, v1

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/d/c;-><init>(Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;Lcom/bytedance/sdk/openadsdk/d/h;)V

    return-object v9
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n$a;->a()Landroid/app/Application;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n$a;->a()Landroid/app/Application;

    move-result-object v1

    .line 64
    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    nop

    :cond_0
    if-eqz p0, :cond_1

    .line 72
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/d/h$a;
    .locals 1

    .line 191
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/n$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/n$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 79
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/m/a;

    .line 80
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->f:Lcom/bytedance/sdk/openadsdk/i/b/a;

    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/c;->c()Lcom/bytedance/sdk/openadsdk/d/c$a;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_3

    .line 88
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v1, :cond_2

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/d/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/d/g;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/d/g;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v3

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->j()Lcom/bytedance/sdk/openadsdk/d/h$b;

    move-result-object v4

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    .line 97
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/n;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/d/h$a;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/d/c;-><init>(Lcom/bytedance/sdk/openadsdk/d/f;Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/d/h$b;Lcom/bytedance/sdk/openadsdk/d/h$a;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 100
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/d/c;

    return-object v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/c;->d()Lcom/bytedance/sdk/openadsdk/d/c$b;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_3

    .line 110
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v1, :cond_2

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/n;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/d/n;-><init>(Z)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    goto :goto_0

    :cond_1
    const-string v1, "ttad_bk_batch_stats"

    const-string v3, "AdStatsEventBatchThread"

    .line 115
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 118
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 120
    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Lcom/bytedance/sdk/openadsdk/d/c;

    return-object v0
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/d/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/d/c<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/c;->d()Lcom/bytedance/sdk/openadsdk/d/c$b;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_3

    .line 128
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v1, :cond_2

    .line 130
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 131
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/n;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/d/n;-><init>(Z)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    goto :goto_0

    :cond_1
    const-string v1, "ttad_bk_stats"

    const-string v3, "AdStatsEventThread"

    .line 133
    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    .line 136
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/d/c;

    return-object v0
.end method

.method public static f()Lcom/bytedance/sdk/openadsdk/core/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/core/o<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    if-nez v0, :cond_1

    .line 143
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/n;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 147
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/core/o;

    return-object v0
.end method

.method public static g()Lcom/bytedance/sdk/openadsdk/m/a;
    .locals 5

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/m/b;->d()Lcom/bytedance/sdk/openadsdk/m/a;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/m/a;

    if-nez v0, :cond_3

    .line 157
    const-class v0, Lcom/bytedance/sdk/openadsdk/m/a;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/m/a;

    if-nez v1, :cond_2

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Lcom/bytedance/sdk/openadsdk/m/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/m/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/m/a;

    goto :goto_0

    .line 162
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/m/b;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/m/h;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/m/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/m/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/m/g;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/m/a;

    .line 165
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 167
    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Lcom/bytedance/sdk/openadsdk/m/a;

    return-object v0
.end method

.method public static h()Lcom/bytedance/sdk/openadsdk/core/h/e;
    .locals 2

    .line 200
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->h:Lcom/bytedance/sdk/openadsdk/core/h/e;

    if-nez v0, :cond_1

    .line 201
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/h/e;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->h:Lcom/bytedance/sdk/openadsdk/core/h/e;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->h:Lcom/bytedance/sdk/openadsdk/core/h/e;

    .line 205
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 207
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->h:Lcom/bytedance/sdk/openadsdk/core/h/e;

    return-object v0
.end method

.method public static i()Lcom/bytedance/sdk/openadsdk/i/b/a;
    .locals 2

    .line 223
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/b/c;->c()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->f:Lcom/bytedance/sdk/openadsdk/i/b/a;

    if-nez v0, :cond_3

    .line 227
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/b/c;

    monitor-enter v0

    .line 228
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->f:Lcom/bytedance/sdk/openadsdk/i/b/a;

    if-nez v1, :cond_2

    .line 229
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/i/b/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->f:Lcom/bytedance/sdk/openadsdk/i/b/a;

    goto :goto_0

    .line 232
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/i/b/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/n;->f:Lcom/bytedance/sdk/openadsdk/i/b/a;

    .line 235
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 237
    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/n;->f:Lcom/bytedance/sdk/openadsdk/i/b/a;

    return-object v0
.end method

.method private static j()Lcom/bytedance/sdk/openadsdk/d/h$b;
    .locals 1

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/h$b;->a()Lcom/bytedance/sdk/openadsdk/d/h$b;

    move-result-object v0

    return-object v0
.end method
