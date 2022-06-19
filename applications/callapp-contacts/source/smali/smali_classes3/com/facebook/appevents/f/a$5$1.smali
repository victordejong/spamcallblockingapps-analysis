.class final Lcom/facebook/appevents/f/a$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/f/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/f/a$5;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/f/a$5;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/facebook/appevents/f/a$5$1;->a:Lcom/facebook/appevents/f/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Lcom/facebook/appevents/f/g;

    iget-object v2, p0, Lcom/facebook/appevents/f/a$5$1;->a:Lcom/facebook/appevents/f/a$5;

    iget-wide v2, v2, Lcom/facebook/appevents/f/a$5;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/f/g;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/appevents/f/a;->a(Lcom/facebook/appevents/f/g;)Lcom/facebook/appevents/f/g;

    .line 249
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/f/a;->k()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/facebook/appevents/f/a$5$1;->a:Lcom/facebook/appevents/f/a$5;

    iget-object v0, v0, Lcom/facebook/appevents/f/a$5;->b:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v2

    invoke-static {}, Lcom/facebook/appevents/f/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/f/h;->a(Ljava/lang/String;Lcom/facebook/appevents/f/g;Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1082
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.facebook.appevents.SessionInfo.sessionStartTime"

    .line 1083
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 1084
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SessionInfo.interruptionCount"

    .line 1085
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SessionInfo.sessionId"

    .line 1086
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1087
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2068
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2069
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 2070
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 2071
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2072
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    invoke-static {v1}, Lcom/facebook/appevents/f/a;->a(Lcom/facebook/appevents/f/g;)Lcom/facebook/appevents/f/g;

    .line 255
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/f/a;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    invoke-static {v1}, Lcom/facebook/appevents/f/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 257
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 258
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
