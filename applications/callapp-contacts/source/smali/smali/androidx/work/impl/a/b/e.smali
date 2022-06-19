.class public final Landroidx/work/impl/a/b/e;
.super Landroidx/work/impl/a/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/a/b/e$a;,
        Landroidx/work/impl/a/b/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/a/b/d<",
        "Landroidx/work/impl/a/b;",
        ">;"
    }
.end annotation


# static fields
.field static final d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/net/ConnectivityManager;

.field private f:Landroidx/work/impl/a/b/e$b;

.field private g:Landroidx/work/impl/a/b/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkStateTracker"

    .line 55
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/a/b/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    .line 70
    iget-object p1, p0, Landroidx/work/impl/a/b/e;->b:Landroid/content/Context;

    const-string p2, "connectivity"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Landroidx/work/impl/a/b/e;->e:Landroid/net/ConnectivityManager;

    .line 72
    invoke-static {}, Landroidx/work/impl/a/b/e;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    new-instance p1, Landroidx/work/impl/a/b/e$b;

    invoke-direct {p1, p0}, Landroidx/work/impl/a/b/e$b;-><init>(Landroidx/work/impl/a/b/e;)V

    iput-object p1, p0, Landroidx/work/impl/a/b/e;->f:Landroidx/work/impl/a/b/e$b;

    return-void

    .line 75
    :cond_0
    new-instance p1, Landroidx/work/impl/a/b/e$a;

    invoke-direct {p1, p0}, Landroidx/work/impl/a/b/e$a;-><init>(Landroidx/work/impl/a/b/e;)V

    iput-object p1, p0, Landroidx/work/impl/a/b/e;->g:Landroidx/work/impl/a/b/e$a;

    return-void
.end method

.method private static e()Z
    .locals 2

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 5

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 151
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/a/b/e;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 152
    iget-object v3, p0, Landroidx/work/impl/a/b/e;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x10

    .line 154
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return v0

    :cond_1
    return v1

    :catch_0
    move-exception v2

    .line 157
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    const-string v2, "Unable to validate active network"

    invoke-virtual {v3, v4, v2, v0}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method final a()Landroidx/work/impl/a/b;
    .locals 8

    .line 137
    iget-object v0, p0, Landroidx/work/impl/a/b/e;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 139
    :goto_0
    invoke-direct {p0}, Landroidx/work/impl/a/b/e;->f()Z

    move-result v4

    .line 140
    iget-object v5, p0, Landroidx/work/impl/a/b/e;->e:Landroid/net/ConnectivityManager;

    .line 1100
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    .line 1101
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v5

    goto :goto_2

    .line 1103
    :cond_1
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1109
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    :pswitch_2
    const/4 v5, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 142
    :cond_3
    new-instance v0, Landroidx/work/impl/a/b;

    invoke-direct {v0, v3, v4, v5, v1}, Landroidx/work/impl/a/b;-><init>(ZZZZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 2081
    invoke-virtual {p0}, Landroidx/work/impl/a/b/e;->a()Landroidx/work/impl/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 5

    .line 86
    invoke-static {}, Landroidx/work/impl/a/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 89
    iget-object v0, p0, Landroidx/work/impl/a/b/e;->e:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroidx/work/impl/a/b/e;->f:Landroidx/work/impl/a/b/e$b;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 95
    :goto_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Received exception while registering network callback"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 101
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 102
    iget-object v0, p0, Landroidx/work/impl/a/b/e;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/a/b/e;->g:Landroidx/work/impl/a/b/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final d()V
    .locals 5

    .line 109
    invoke-static {}, Landroidx/work/impl/a/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 112
    iget-object v0, p0, Landroidx/work/impl/a/b/e;->e:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroidx/work/impl/a/b/e;->f:Landroidx/work/impl/a/b/e$b;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 118
    :goto_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Received exception while unregistering network callback"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 124
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 125
    iget-object v0, p0, Landroidx/work/impl/a/b/e;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/a/b/e;->g:Landroidx/work/impl/a/b/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
