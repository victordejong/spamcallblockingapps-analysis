.class public Lcom/facebook/internal/a;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/a$a;,
        Lcom/facebook/internal/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static g:Lcom/facebook/internal/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/internal/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/a;->f:J

    .line 260
    sput-object p0, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;

    .line 261
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 133
    .line 134
    invoke-static {p0}, Lcom/facebook/internal/a;->b(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-static {p0}, Lcom/facebook/internal/a;->c(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v7

    .line 185
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 186
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "getAttributionIdentifiers cannot be called on the main thread."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 243
    :goto_0
    :try_start_1
    sget-object v2, Lcom/facebook/internal/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 250
    :cond_1
    :goto_1
    return-object v0

    .line 191
    :cond_2
    :try_start_2
    sget-object v0, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;

    if-eqz v0, :cond_3

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;

    iget-wide v2, v2, Lcom/facebook/internal/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 194
    sget-object v0, Lcom/facebook/internal/a;->g:Lcom/facebook/internal/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    if-eqz v6, :cond_1

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 197
    :cond_3
    const/4 v0, 0x3

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "aid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "androidid"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "limit_tracking"

    aput-object v1, v2, v0

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.katana.provider.AttributionIdProvider"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "com.facebook.wakizashi.provider.AttributionIdProvider"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 206
    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 207
    invoke-static {p0, v0}, Lcom/facebook/internal/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    const-string/jumbo v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 217
    :goto_2
    invoke-static {p0}, Lcom/facebook/internal/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_4

    .line 219
    iput-object v0, v7, Lcom/facebook/internal/a;->d:Ljava/lang/String;

    .line 221
    :cond_4
    if-nez v1, :cond_6

    .line 222
    invoke-static {v7}, Lcom/facebook/internal/a;->a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 246
    if-eqz v6, :cond_1

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 211
    :cond_5
    if-eqz v1, :cond_c

    :try_start_4
    iget-object v0, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 212
    invoke-static {p0, v0}, Lcom/facebook/internal/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 215
    const-string/jumbo v0, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 224
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 225
    if-eqz v1, :cond_7

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    .line 226
    :cond_7
    invoke-static {v7}, Lcom/facebook/internal/a;->a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 246
    if-eqz v1, :cond_1

    .line 247
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 228
    :cond_8
    :try_start_6
    const-string/jumbo v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 229
    const-string/jumbo v2, "androidid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 230
    const-string/jumbo v3, "limit_tracking"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 232
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/internal/a;->b:Ljava/lang/String;

    .line 236
    if-lez v2, :cond_9

    if-lez v3, :cond_9

    .line 237
    invoke-virtual {v7}, Lcom/facebook/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 238
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 240
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/facebook/internal/a;->e:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 246
    :cond_9
    if-eqz v1, :cond_a

    .line 247
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_a
    invoke-static {v7}, Lcom/facebook/internal/a;->a(Lcom/facebook/internal/a;)Lcom/facebook/internal/a;

    move-result-object v0

    goto/16 :goto_1

    .line 246
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_b

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_b
    throw v0

    .line 246
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 242
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_c
    move-object v1, v6

    goto/16 :goto_2
.end method

.method private static c(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lcom/facebook/internal/a;->d(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/facebook/internal/a;->f(Landroid/content/Context;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/facebook/internal/a;

    invoke-direct {v0}, Lcom/facebook/internal/a;-><init>()V

    .line 86
    :cond_0
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 128
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string/jumbo v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    if-nez v0, :cond_1

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v0, v3}, Lcom/facebook/internal/x;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    if-nez v3, :cond_2

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "isLimitAdTrackingEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 110
    invoke-static {v2, v4, v5}, Lcom/facebook/internal/x;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 113
    if-eqz v0, :cond_3

    if-nez v4, :cond_4

    :cond_3
    move-object v0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_4
    new-instance v2, Lcom/facebook/internal/a;

    invoke-direct {v2}, Lcom/facebook/internal/a;-><init>()V

    .line 118
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 119
    invoke-static {v3, v0, v5}, Lcom/facebook/internal/x;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/internal/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string/jumbo v2, "android_id"

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 128
    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    const-string/jumbo v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string/jumbo v3, "isGooglePlayServicesAvailable"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 149
    :cond_0
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v3, v0, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 153
    goto :goto_0

    :cond_2
    move v0, v2

    .line 156
    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Lcom/facebook/internal/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v2, Lcom/facebook/internal/a$b;

    invoke-direct {v2, v1}, Lcom/facebook/internal/a$b;-><init>(Lcom/facebook/internal/a$1;)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    new-instance v3, Lcom/facebook/internal/a$a;

    invoke-virtual {v2}, Lcom/facebook/internal/a$b;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/internal/a$a;-><init>(Landroid/os/IBinder;)V

    .line 166
    new-instance v0, Lcom/facebook/internal/a;

    invoke-direct {v0}, Lcom/facebook/internal/a;-><init>()V

    .line 167
    invoke-virtual {v3}, Lcom/facebook/internal/a$a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 168
    invoke-virtual {v3}, Lcom/facebook/internal/a$a;->b()Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/internal/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    const-string/jumbo v3, "android_id"

    invoke-static {v3, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    move-object v0, v1

    .line 176
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 174
    throw v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/internal/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/facebook/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/j;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/facebook/internal/a;->c:Ljava/lang/String;

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/facebook/internal/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/facebook/internal/a;->e:Z

    return v0
.end method
