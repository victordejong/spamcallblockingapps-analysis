.class public final Lfj0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile d:Lfj0;


# instance fields
.field public final a:Lnf;

.field public final b:Lej0;

.field public c:Lcom/facebook/Profile;


# direct methods
.method public constructor <init>(Lnf;Lej0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCache"

    invoke-static {p2, v0}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfj0;->a:Lnf;

    iput-object p2, p0, Lfj0;->b:Lej0;

    return-void
.end method

.method public static b()Lfj0;
    .locals 4

    sget-object v0, Lfj0;->d:Lfj0;

    if-nez v0, :cond_1

    const-class v0, Lfj0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lfj0;->d:Lfj0;

    if-nez v1, :cond_0

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v1

    new-instance v2, Lfj0;

    new-instance v3, Lej0;

    invoke-direct {v3}, Lej0;-><init>()V

    invoke-direct {v2, v1, v3}, Lfj0;-><init>(Lnf;Lej0;)V

    sput-object v2, Lfj0;->d:Lfj0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lfj0;->d:Lfj0;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/Profile;
    .locals 1

    iget-object v0, p0, Lfj0;->c:Lcom/facebook/Profile;

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lfj0;->b:Lej0;

    invoke-virtual {v0}, Lej0;->b()Lcom/facebook/Profile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lfj0;->f(Lcom/facebook/Profile;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final d(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lfj0;->a:Lnf;

    invoke-virtual {p1, v0}, Lnf;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public e(Lcom/facebook/Profile;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lfj0;->f(Lcom/facebook/Profile;Z)V

    return-void
.end method

.method public final f(Lcom/facebook/Profile;Z)V
    .locals 1

    iget-object v0, p0, Lfj0;->c:Lcom/facebook/Profile;

    iput-object p1, p0, Lfj0;->c:Lcom/facebook/Profile;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lfj0;->b:Lej0;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lej0;->c(Lcom/facebook/Profile;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lej0;->a()V

    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lfn0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v0, p1}, Lfj0;->d(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    :cond_2
    return-void
.end method
