.class public final Lcom/facebook/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/b$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/facebook/b;


# instance fields
.field final a:Lcom/facebook/a;

.field b:Lcom/facebook/AccessToken;

.field private final d:Landroidx/i/a/a;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroidx/i/a/a;Lcom/facebook/a;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    const-string v0, "localBroadcastManager"

    .line 70
    invoke-static {p1, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessTokenCache"

    .line 71
    invoke-static {p2, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/facebook/b;->d:Landroidx/i/a/a;

    .line 74
    iput-object p2, p0, Lcom/facebook/b;->a:Lcom/facebook/a;

    return-void
.end method

.method private static a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 7

    .line 194
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 195
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const-string v2, "me/permissions"

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-object v6
.end method

.method static a()Lcom/facebook/b;
    .locals 4

    .line 78
    sget-object v0, Lcom/facebook/b;->c:Lcom/facebook/b;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/facebook/b;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/facebook/b;->c:Lcom/facebook/b;

    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroidx/i/a/a;->a(Landroid/content/Context;)Landroidx/i/a/a;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/facebook/a;

    invoke-direct {v2}, Lcom/facebook/a;-><init>()V

    .line 86
    new-instance v3, Lcom/facebook/b;

    invoke-direct {v3, v1, v2}, Lcom/facebook/b;-><init>(Landroidx/i/a/a;Lcom/facebook/a;)V

    sput-object v3, Lcom/facebook/b;->c:Lcom/facebook/b;

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/b;->c:Lcom/facebook/b;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/b;Lcom/facebook/AccessToken$b;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/b;->b(Lcom/facebook/AccessToken$b;)V

    return-void
.end method

.method private static b(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 7

    .line 201
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "grant_type"

    const-string v1, "fb_extend_sso_token"

    .line 202
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const-string v2, "oauth/access_token"

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-object v6
.end method

.method private b(Lcom/facebook/AccessToken$b;)V
    .locals 16

    move-object/from16 v9, p0

    .line 232
    iget-object v6, v9, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    if-nez v6, :cond_1

    if-eqz p1, :cond_0

    .line 235
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v0, v9, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 241
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Refresh already in progress"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 246
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v9, Lcom/facebook/b;->f:Ljava/util/Date;

    .line 248
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 249
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 250
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 251
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v13, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 252
    new-instance v14, Lcom/facebook/b$a;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Lcom/facebook/b$a;-><init>(Lcom/facebook/b$1;)V

    .line 254
    new-instance v15, Lcom/facebook/i;

    const/4 v0, 0x2

    new-array v5, v0, [Lcom/facebook/GraphRequest;

    new-instance v4, Lcom/facebook/b$2;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v10

    move-object v8, v4

    move-object v4, v11

    move-object v7, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/facebook/b$2;-><init>(Lcom/facebook/b;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 256
    invoke-static {v6, v8}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    new-instance v0, Lcom/facebook/b$3;

    invoke-direct {v0, v9, v14}, Lcom/facebook/b$3;-><init>(Lcom/facebook/b;Lcom/facebook/b$a;)V

    .line 292
    invoke-static {v6, v0}, Lcom/facebook/b;->b(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v7, v1

    invoke-direct {v15, v7}, Lcom/facebook/i;-><init>([Lcom/facebook/GraphRequest;)V

    .line 309
    new-instance v8, Lcom/facebook/b$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v10

    move-object v7, v11

    move-object v10, v8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/facebook/b$4;-><init>(Lcom/facebook/b;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$b;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/b$a;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v15, v10}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 1260
    invoke-static {v15}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/i;)Lcom/facebook/h;

    return-void
.end method

.method private static c()V
    .locals 6

    .line 152
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "alarm"

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 156
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 163
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 164
    invoke-static {v0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v3, 0x1

    .line 167
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

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


# virtual methods
.method final a(Lcom/facebook/AccessToken$b;)V
    .locals 2

    .line 216
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/facebook/b;->b(Lcom/facebook/AccessToken$b;)V

    return-void

    .line 219
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    new-instance v1, Lcom/facebook/b$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/b$1;-><init>(Lcom/facebook/b;Lcom/facebook/AccessToken$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .line 140
    new-instance v0, Landroid/content/Intent;

    .line 142
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 147
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    iget-object p1, p0, Lcom/facebook/b;->d:Landroidx/i/a/a;

    invoke-virtual {p1, v0}, Landroidx/i/a/a;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method final a(Lcom/facebook/AccessToken;Z)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    .line 115
    iput-object p1, p0, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    .line 116
    iget-object v1, p0, Lcom/facebook/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 121
    iget-object p2, p0, Lcom/facebook/b;->a:Lcom/facebook/a;

    invoke-virtual {p2, p1}, Lcom/facebook/a;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/facebook/b;->a:Lcom/facebook/a;

    invoke-virtual {p2}, Lcom/facebook/a;->b()V

    .line 124
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/internal/ae;->b(Landroid/content/Context;)V

    .line 128
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 130
    invoke-static {}, Lcom/facebook/b;->c()V

    :cond_2
    return-void
.end method

.method final b()V
    .locals 6

    .line 1181
    iget-object v0, p0, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/c;->canExtendToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/b;->f:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 1188
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken$b;)V

    return-void
.end method
