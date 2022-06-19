.class public final Lcom/facebook/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/facebook/o;


# instance fields
.field final a:Lcom/facebook/n;

.field b:Lcom/facebook/Profile;

.field private final d:Landroidx/i/a/a;


# direct methods
.method constructor <init>(Landroidx/i/a/a;Lcom/facebook/n;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localBroadcastManager"

    .line 43
    invoke-static {p1, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCache"

    .line 44
    invoke-static {p2, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/facebook/o;->d:Landroidx/i/a/a;

    .line 46
    iput-object p2, p0, Lcom/facebook/o;->a:Lcom/facebook/n;

    return-void
.end method

.method static a()Lcom/facebook/o;
    .locals 4

    .line 50
    sget-object v0, Lcom/facebook/o;->c:Lcom/facebook/o;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/facebook/o;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/facebook/o;->c:Lcom/facebook/o;

    if-nez v1, :cond_0

    .line 53
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroidx/i/a/a;->a(Landroid/content/Context;)Landroidx/i/a/a;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/facebook/o;

    new-instance v3, Lcom/facebook/n;

    invoke-direct {v3}, Lcom/facebook/n;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/facebook/o;-><init>(Landroidx/i/a/a;Lcom/facebook/n;)V

    sput-object v2, Lcom/facebook/o;->c:Lcom/facebook/o;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/o;->c:Lcom/facebook/o;

    return-object v0
.end method

.method private a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 2

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    .line 104
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    iget-object p1, p0, Lcom/facebook/o;->d:Landroidx/i/a/a;

    invoke-virtual {p1, v0}, Landroidx/i/a/a;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/Profile;Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/facebook/o;->b:Lcom/facebook/Profile;

    .line 85
    iput-object p1, p0, Lcom/facebook/o;->b:Lcom/facebook/Profile;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 89
    iget-object p2, p0, Lcom/facebook/o;->a:Lcom/facebook/n;

    invoke-virtual {p2, p1}, Lcom/facebook/n;->a(Lcom/facebook/Profile;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/facebook/o;->a:Lcom/facebook/n;

    invoke-virtual {p2}, Lcom/facebook/n;->b()V

    .line 95
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 96
    invoke-direct {p0, v0, p1}, Lcom/facebook/o;->a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    :cond_2
    return-void
.end method
