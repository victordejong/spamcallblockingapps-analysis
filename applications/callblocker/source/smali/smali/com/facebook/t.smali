.class public final Lcom/facebook/t;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field private static volatile a:Lcom/facebook/t;


# instance fields
.field private final b:Landroidx/h/a/a;

.field private final c:Lcom/facebook/s;

.field private d:Lcom/facebook/r;


# direct methods
.method constructor <init>(Landroidx/h/a/a;Lcom/facebook/s;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string/jumbo v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "profileCache"

    invoke-static {p2, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/facebook/t;->b:Landroidx/h/a/a;

    .line 52
    iput-object p2, p0, Lcom/facebook/t;->c:Lcom/facebook/s;

    .line 53
    return-void
.end method

.method static a()Lcom/facebook/t;
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/t;->a:Lcom/facebook/t;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/facebook/t;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/facebook/t;->a:Lcom/facebook/t;

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroidx/h/a/a;->a(Landroid/content/Context;)Landroidx/h/a/a;

    move-result-object v0

    .line 63
    new-instance v2, Lcom/facebook/t;

    new-instance v3, Lcom/facebook/s;

    invoke-direct {v3}, Lcom/facebook/s;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/facebook/t;-><init>(Landroidx/h/a/a;Lcom/facebook/s;)V

    sput-object v2, Lcom/facebook/t;->a:Lcom/facebook/t;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/facebook/t;->a:Lcom/facebook/t;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/facebook/r;Lcom/facebook/r;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/facebook/t;->b:Landroidx/h/a/a;

    invoke-virtual {v1, v0}, Landroidx/h/a/a;->a(Landroid/content/Intent;)Z

    .line 115
    return-void
.end method

.method private a(Lcom/facebook/r;Z)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/t;->d:Lcom/facebook/r;

    .line 91
    iput-object p1, p0, Lcom/facebook/t;->d:Lcom/facebook/r;

    .line 93
    if-eqz p2, :cond_0

    .line 94
    if-eqz p1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/facebook/t;->c:Lcom/facebook/s;

    invoke-virtual {v1, p1}, Lcom/facebook/s;->a(Lcom/facebook/r;)V

    .line 101
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/facebook/t;->a(Lcom/facebook/r;Lcom/facebook/r;)V

    .line 104
    :cond_1
    return-void

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/facebook/t;->c:Lcom/facebook/s;

    invoke-virtual {v1}, Lcom/facebook/s;->b()V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/r;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/t;->a(Lcom/facebook/r;Z)V

    .line 87
    return-void
.end method

.method b()Lcom/facebook/r;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/t;->d:Lcom/facebook/r;

    return-object v0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/facebook/t;->c:Lcom/facebook/s;

    invoke-virtual {v1}, Lcom/facebook/s;->a()Lcom/facebook/r;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0, v1, v0}, Lcom/facebook/t;->a(Lcom/facebook/r;Z)V

    .line 79
    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method
