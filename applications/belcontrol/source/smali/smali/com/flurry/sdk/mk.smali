.class public Lcom/flurry/sdk/mk;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "mk"

.field private static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v0, Lcom/flurry/sdk/mk;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/flurry/sdk/mk;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-class v1, Lcom/flurry/sdk/jr;

    invoke-static {v1}, Lcom/flurry/sdk/kw;->a(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x3

    :try_start_2
    const-class v2, Lcom/flurry/sdk/hx;

    invoke-static {v2}, Lcom/flurry/sdk/kw;->a(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/mk;->a:Ljava/lang/String;

    const-string v3, "Analytics module not available"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    const-class v2, Lcom/flurry/sdk/mi;

    invoke-static {v2}, Lcom/flurry/sdk/kw;->a(Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_5
    sget-object v2, Lcom/flurry/sdk/mk;->a:Ljava/lang/String;

    const-string v3, "Crash module not available"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    const-string v2, "com.flurry.sdk.j"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/sdk/kw;->a(Ljava/lang/Class;)V
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    :try_start_7
    sget-object v2, Lcom/flurry/sdk/mk;->a:Ljava/lang/String;

    const-string v3, "Ads module not available"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/flurry/sdk/mk;->b:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
