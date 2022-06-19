.class final Lcom/facebook/appevents/f/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/f/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 163
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1061
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.facebook.appevents.SessionInfo.sessionStartTime"

    const-wide/16 v3, 0x0

    .line 1063
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 1064
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "com.facebook.appevents.SessionInfo.sessionId"

    const/4 v9, 0x0

    .line 1065
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    cmp-long v10, v5, v3

    if-eqz v10, :cond_3

    cmp-long v10, v7, v3

    if-eqz v10, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 1071
    :cond_1
    new-instance v3, Lcom/facebook/appevents/f/g;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/facebook/appevents/f/g;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    const-string v4, "com.facebook.appevents.SessionInfo.interruptionCount"

    const/4 v5, 0x0

    .line 1072
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/facebook/appevents/f/g;->c:I

    .line 2053
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2055
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 2060
    :cond_2
    invoke-interface {v1, v0, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 2061
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2063
    new-instance v9, Lcom/facebook/appevents/f/i;

    invoke-direct {v9, v0, v1}, Lcom/facebook/appevents/f/i;-><init>(Ljava/lang/String;Z)V

    .line 1073
    :goto_0
    iput-object v9, v3, Lcom/facebook/appevents/f/g;->e:Lcom/facebook/appevents/f/i;

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/appevents/f/g;->d:Ljava/lang/Long;

    .line 1075
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/appevents/f/g;->f:Ljava/util/UUID;

    move-object v9, v3

    .line 164
    :cond_3
    :goto_1
    invoke-static {v9}, Lcom/facebook/appevents/f/a;->a(Lcom/facebook/appevents/f/g;)Lcom/facebook/appevents/f/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 166
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
