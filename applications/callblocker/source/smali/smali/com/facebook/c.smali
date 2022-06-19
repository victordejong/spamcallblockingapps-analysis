.class public final Lcom/facebook/c;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/c$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/facebook/c;


# instance fields
.field private final b:Landroidx/h/a/a;

.field private final c:Lcom/facebook/b;

.field private d:Lcom/facebook/a;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroidx/h/a/a;Lcom/facebook/b;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/c;->f:Ljava/util/Date;

    .line 75
    const-string/jumbo v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "accessTokenCache"

    invoke-static {p2, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/facebook/c;->b:Landroidx/h/a/a;

    .line 79
    iput-object p2, p0, Lcom/facebook/c;->c:Lcom/facebook/b;

    .line 80
    return-void
.end method

.method static a()Lcom/facebook/c;
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/facebook/c;->a:Lcom/facebook/c;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lcom/facebook/c;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/facebook/c;->a:Lcom/facebook/c;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroidx/h/a/a;->a(Landroid/content/Context;)Landroidx/h/a/a;

    move-result-object v0

    .line 89
    new-instance v2, Lcom/facebook/b;

    invoke-direct {v2}, Lcom/facebook/b;-><init>()V

    .line 91
    new-instance v3, Lcom/facebook/c;

    invoke-direct {v3, v0, v2}, Lcom/facebook/c;-><init>(Landroidx/h/a/a;Lcom/facebook/b;)V

    sput-object v3, Lcom/facebook/c;->a:Lcom/facebook/c;

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    sget-object v0, Lcom/facebook/c;->a:Lcom/facebook/c;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/a;Lcom/facebook/k$b;)Lcom/facebook/k;
    .locals 6

    .prologue
    .line 205
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 206
    new-instance v0, Lcom/facebook/k;

    const-string/jumbo v2, "me/permissions"

    sget-object v4, Lcom/facebook/o;->a:Lcom/facebook/o;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Lcom/facebook/a;Lcom/facebook/a;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    .line 148
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string/jumbo v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/facebook/c;->b:Landroidx/h/a/a;

    invoke-virtual {v1, v0}, Landroidx/h/a/a;->a(Landroid/content/Intent;)Z

    .line 155
    return-void
.end method

.method private a(Lcom/facebook/a;Z)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    .line 120
    iput-object p1, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    .line 121
    iget-object v1, p0, Lcom/facebook/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/c;->f:Ljava/util/Date;

    .line 124
    if-eqz p2, :cond_0

    .line 125
    if-eqz p1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/facebook/c;->c:Lcom/facebook/b;

    invoke-virtual {v1, p1}, Lcom/facebook/b;->a(Lcom/facebook/a;)V

    .line 133
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-direct {p0, v0, p1}, Lcom/facebook/c;->a(Lcom/facebook/a;Lcom/facebook/a;)V

    .line 135
    invoke-direct {p0}, Lcom/facebook/c;->f()V

    .line 137
    :cond_1
    return-void

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/facebook/c;->c:Lcom/facebook/b;

    invoke-virtual {v1}, Lcom/facebook/b;->b()V

    .line 129
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/x;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/c;Lcom/facebook/a$a;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/c;->b(Lcom/facebook/a$a;)V

    return-void
.end method

.method private static b(Lcom/facebook/a;Lcom/facebook/k$b;)Lcom/facebook/k;
    .locals 6

    .prologue
    .line 218
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 219
    const-string/jumbo v0, "grant_type"

    const-string/jumbo v1, "fb_extend_sso_token"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "client_id"

    invoke-virtual {p0}, Lcom/facebook/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/facebook/k;

    const-string/jumbo v2, "oauth/access_token"

    sget-object v4, Lcom/facebook/o;->a:Lcom/facebook/o;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    return-object v0
.end method

.method private b(Lcom/facebook/a$a;)V
    .locals 17

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/c;->d:Lcom/facebook/a;

    .line 253
    if-nez v9, :cond_1

    .line 254
    if-eqz p1, :cond_0

    .line 255
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "No current access token to refresh"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/facebook/a$a;->a(Lcom/facebook/FacebookException;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 261
    if-eqz p1, :cond_0

    .line 262
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Refresh already in progress"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/facebook/a$a;->a(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 268
    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/c;->f:Ljava/util/Date;

    .line 270
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 271
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 272
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 273
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 274
    new-instance v12, Lcom/facebook/c$a;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/facebook/c$a;-><init>(Lcom/facebook/c$1;)V

    .line 276
    new-instance v16, Lcom/facebook/m;

    const/4 v1, 0x2

    new-array v7, v1, [Lcom/facebook/k;

    const/4 v8, 0x0

    new-instance v1, Lcom/facebook/c$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/c$2;-><init>(Lcom/facebook/c;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 277
    invoke-static {v9, v1}, Lcom/facebook/c;->a(Lcom/facebook/a;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    new-instance v2, Lcom/facebook/c$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/facebook/c$3;-><init>(Lcom/facebook/c;Lcom/facebook/c$a;)V

    .line 312
    invoke-static {v9, v2}, Lcom/facebook/c;->b(Lcom/facebook/a;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v2

    aput-object v2, v7, v1

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/facebook/m;-><init>([Lcom/facebook/k;)V

    .line 328
    new-instance v7, Lcom/facebook/c$4;

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object v11, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    invoke-direct/range {v7 .. v15}, Lcom/facebook/c$4;-><init>(Lcom/facebook/c;Lcom/facebook/a;Lcom/facebook/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/c$a;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/facebook/m;->a(Lcom/facebook/m$a;)V

    .line 381
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/m;->h()Lcom/facebook/l;

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v2

    .line 160
    const-string/jumbo v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 162
    invoke-static {}, Lcom/facebook/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v2}, Lcom/facebook/a;->e()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string/jumbo v4, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-static {v1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 173
    const/4 v3, 0x1

    .line 175
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/a;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 173
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->j()Lcom/facebook/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/c;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    invoke-virtual {v1}, Lcom/facebook/a;->k()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/a$a;)V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lcom/facebook/c;->b(Lcom/facebook/a$a;)V

    .line 248
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    new-instance v1, Lcom/facebook/c$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/c$1;-><init>(Lcom/facebook/c;Lcom/facebook/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Lcom/facebook/a;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/c;->a(Lcom/facebook/a;Z)V

    .line 116
    return-void
.end method

.method b()Lcom/facebook/a;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    return-object v0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/facebook/c;->c:Lcom/facebook/b;

    invoke-virtual {v1}, Lcom/facebook/b;->a()Lcom/facebook/a;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0, v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/a;Z)V

    .line 108
    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    iget-object v1, p0, Lcom/facebook/c;->d:Lcom/facebook/a;

    invoke-direct {p0, v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/a;Lcom/facebook/a;)V

    .line 143
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/facebook/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/c;->a(Lcom/facebook/a$a;)V

    goto :goto_0
.end method
