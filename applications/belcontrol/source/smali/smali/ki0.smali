.class public final Lki0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lki0$e;
    }
.end annotation


# static fields
.field public static volatile f:Lki0;


# instance fields
.field public final a:Lnf;

.field public final b:Lji0;

.field public c:Lcom/facebook/AccessToken;

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lnf;Lji0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lki0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lki0;->e:Ljava/util/Date;

    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessTokenCache"

    invoke-static {p2, v0}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lki0;->a:Lnf;

    iput-object p2, p0, Lki0;->b:Lji0;

    return-void
.end method

.method public static synthetic a(Lki0;Lcom/facebook/AccessToken$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lki0;->k(Lcom/facebook/AccessToken$b;)V

    return-void
.end method

.method public static synthetic b(Lki0;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lki0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static c(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "grant_type"

    const-string v1, "fb_extend_sso_token"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lbj0;->a:Lbj0;

    const-string v2, "oauth/access_token"

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbj0;Lcom/facebook/GraphRequest$e;)V

    return-object v6
.end method

.method public static d(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lbj0;->a:Lbj0;

    const-string v2, "me/permissions"

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbj0;Lcom/facebook/GraphRequest$e;)V

    return-object v6
.end method

.method public static h()Lki0;
    .locals 4

    sget-object v0, Lki0;->f:Lki0;

    if-nez v0, :cond_1

    const-class v0, Lki0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lki0;->f:Lki0;

    if-nez v1, :cond_0

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v1

    new-instance v2, Lji0;

    invoke-direct {v2}, Lji0;-><init>()V

    new-instance v3, Lki0;

    invoke-direct {v3, v1, v2}, Lki0;-><init>(Lnf;Lji0;)V

    sput-object v3, Lki0;->f:Lki0;

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
    sget-object v0, Lki0;->f:Lki0;

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lki0;->c:Lcom/facebook/AccessToken;

    invoke-virtual {p0, v0, v0}, Lki0;->l(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lki0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lki0;->j(Lcom/facebook/AccessToken$b;)V

    return-void
.end method

.method public g()Lcom/facebook/AccessToken;
    .locals 1

    iget-object v0, p0, Lki0;->c:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lki0;->b:Lji0;

    invoke-virtual {v0}, Lji0;->f()Lcom/facebook/AccessToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lki0;->n(Lcom/facebook/AccessToken;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public j(Lcom/facebook/AccessToken$b;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lki0;->k(Lcom/facebook/AccessToken$b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lki0$a;

    invoke-direct {v1, p0, p1}, Lki0$a;-><init>(Lki0;Lcom/facebook/AccessToken$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final k(Lcom/facebook/AccessToken$b;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v6, p1

    iget-object v7, v9, Lki0;->c:Lcom/facebook/AccessToken;

    if-nez v7, :cond_1

    if-eqz v6, :cond_0

    new-instance v0, Lri0;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Lri0;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/facebook/AccessToken$b;->a(Lri0;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v9, Lki0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    new-instance v0, Lri0;

    const-string v1, "Refresh already in progress"

    invoke-direct {v0, v1}, Lri0;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/facebook/AccessToken$b;->a(Lri0;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v9, Lki0;->e:Ljava/util/Date;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v14, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v15, Lki0$e;

    const/4 v0, 0x0

    invoke-direct {v15, v0}, Lki0$e;-><init>(Lki0$a;)V

    new-instance v5, Lzi0;

    const/4 v0, 0x2

    new-array v4, v0, [Lcom/facebook/GraphRequest;

    new-instance v3, Lki0$b;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v10, v3

    move-object v3, v11

    move-object v8, v4

    move-object v4, v12

    move-object/from16 v16, v12

    move-object v12, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lki0$b;-><init>(Lki0;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v7, v10}, Lki0;->d(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    new-instance v0, Lki0$c;

    invoke-direct {v0, v9, v15}, Lki0$c;-><init>(Lki0;Lki0$e;)V

    invoke-static {v7, v0}, Lki0;->c(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    invoke-direct {v12, v8}, Lzi0;-><init>([Lcom/facebook/GraphRequest;)V

    new-instance v10, Lki0$d;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    move-object v6, v11

    move-object/from16 v7, v16

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lki0$d;-><init>(Lki0;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$b;Ljava/util/concurrent/atomic/AtomicBoolean;Lki0$e;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v12, v10}, Lzi0;->c(Lzi0$a;)V

    invoke-virtual {v12}, Lzi0;->f()Lyi0;

    return-void
.end method

.method public final l(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lki0;->a:Lnf;

    invoke-virtual {p1, v0}, Lnf;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public m(Lcom/facebook/AccessToken;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lki0;->n(Lcom/facebook/AccessToken;Z)V

    return-void
.end method

.method public final n(Lcom/facebook/AccessToken;Z)V
    .locals 4

    iget-object v0, p0, Lki0;->c:Lcom/facebook/AccessToken;

    iput-object p1, p0, Lki0;->c:Lcom/facebook/AccessToken;

    iget-object v1, p0, Lki0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lki0;->e:Ljava/util/Date;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lki0;->b:Lji0;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lji0;->g(Lcom/facebook/AccessToken;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lji0;->a()V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lfn0;->g(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lfn0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v0, p1}, Lki0;->l(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    invoke-virtual {p0}, Lki0;->o()V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 6

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->k()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->k()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final p()Z
    .locals 7

    iget-object v0, p0, Lki0;->c:Lcom/facebook/AccessToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lki0;->c:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->p()Lli0;

    move-result-object v2

    invoke-virtual {v2}, Lli0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lki0;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lki0;->c:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->m()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
