.class public final Lcom/google/firebase/remoteconfig/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/g$a;
    }
.end annotation


# static fields
.field public static final a:J

.field static final b:[I


# instance fields
.field private final c:Lcom/google/firebase/installations/h;

.field private final d:Lcom/google/firebase/analytics/connector/a;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/common/util/f;

.field private final g:Ljava/util/Random;

.field private final h:Lcom/google/firebase/remoteconfig/internal/a;

.field private final i:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

.field private final j:Lcom/google/firebase/remoteconfig/internal/n;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/remoteconfig/internal/g;->a:J

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 72
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/g;->b:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/installations/h;Lcom/google/firebase/analytics/connector/a;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/f;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/installations/h;",
            "Lcom/google/firebase/analytics/connector/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/common/util/f;",
            "Ljava/util/Random;",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;",
            "Lcom/google/firebase/remoteconfig/internal/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/g;->c:Lcom/google/firebase/installations/h;

    .line 105
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->d:Lcom/google/firebase/analytics/connector/a;

    .line 106
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/g;->e:Ljava/util/concurrent/Executor;

    .line 107
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/g;->f:Lcom/google/android/gms/common/util/f;

    .line 108
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/internal/g;->g:Ljava/util/Random;

    .line 109
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/internal/g;->h:Lcom/google/firebase/remoteconfig/internal/a;

    .line 110
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/internal/g;->i:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 111
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 113
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/g;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/internal/g$a;)Lcom/google/android/gms/tasks/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    invoke-static {p0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/internal/g;JLcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15171
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/g;->f:Lcom/google/android/gms/common/util/f;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 15172
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 15232
    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 16096
    new-instance v4, Ljava/util/Date;

    iget-object p3, p3, Lcom/google/firebase/remoteconfig/internal/n;->c:Landroid/content/SharedPreferences;

    const-wide/16 v5, -0x1

    const-string v7, "last_fetch_time_in_millis"

    .line 16097
    invoke-interface {p3, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 15235
    sget-object p3, Lcom/google/firebase/remoteconfig/internal/n;->a:Ljava/util/Date;

    invoke-virtual {v4, p3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 15239
    :cond_0
    new-instance p3, Ljava/util/Date;

    .line 15240
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v4, p1

    invoke-direct {p3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 15242
    invoke-virtual {v0, p3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 16558
    new-instance p0, Lcom/google/firebase/remoteconfig/internal/g$a;

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/google/firebase/remoteconfig/internal/g$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V

    .line 15175
    invoke-static {p0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0

    .line 17252
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/n;->c()Lcom/google/firebase/remoteconfig/internal/n$a;

    move-result-object p1

    .line 18257
    iget-object p1, p1, Lcom/google/firebase/remoteconfig/internal/n$a;->b:Ljava/util/Date;

    .line 17253
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object v3, p1

    :cond_2
    const/4 p1, 0x1

    if-eqz v3, :cond_3

    .line 15184
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    .line 15187
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-array p1, p1, [Ljava/lang/Object;

    .line 18265
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18267
    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "Fetch is throttled. Please wait before calling fetch again: %s"

    .line 18265
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15188
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p2, p1, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;-><init>(Ljava/lang/String;J)V

    .line 15185
    invoke-static {p2}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    goto :goto_1

    .line 15190
    :cond_3
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->c:Lcom/google/firebase/installations/h;

    invoke-interface {p2}, Lcom/google/firebase/installations/h;->b()Lcom/google/android/gms/tasks/h;

    move-result-object p2

    .line 15191
    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/g;->c:Lcom/google/firebase/installations/h;

    .line 15192
    invoke-interface {p3}, Lcom/google/firebase/installations/h;->c()Lcom/google/android/gms/tasks/h;

    move-result-object p3

    new-array v1, v1, [Lcom/google/android/gms/tasks/h;

    aput-object p2, v1, v2

    aput-object p3, v1, p1

    .line 15194
    invoke-static {v1}, Lcom/google/android/gms/tasks/k;->b([Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/g;->e:Ljava/util/concurrent/Executor;

    .line 19000
    new-instance v2, Lcom/google/firebase/remoteconfig/internal/i;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/google/firebase/remoteconfig/internal/i;-><init>(Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;Ljava/util/Date;)V

    .line 15195
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/tasks/h;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    .line 15219
    :goto_1
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->e:Ljava/util/concurrent/Executor;

    .line 20000
    new-instance p3, Lcom/google/firebase/remoteconfig/internal/j;

    invoke-direct {p3, p0, v0}, Lcom/google/firebase/remoteconfig/internal/j;-><init>(Lcom/google/firebase/remoteconfig/internal/g;Ljava/util/Date;)V

    .line 15219
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/h;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;Ljava/util/Date;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 202
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->e()Ljava/lang/Exception;

    move-result-object p1

    const-string p2, "Firebase Installations failed to get installation ID for fetch."

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-static {p0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    new-instance p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 209
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->e()Ljava/lang/Exception;

    move-result-object p1

    const-string p2, "Firebase Installations failed to get installation auth token for fetch."

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-static {p0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 213
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/installations/l;

    invoke-virtual {p2}, Lcom/google/firebase/installations/l;->a()Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/internal/g;Ljava/util/Date;Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12475
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12476
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 13183
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/n;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 13184
    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/n;->c:Landroid/content/SharedPreferences;

    .line 13185
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "last_fetch_status"

    const/4 v2, -0x1

    .line 13186
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "last_fetch_time_in_millis"

    .line 13187
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 13188
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13189
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12480
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->e()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12486
    instance-of p1, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz p1, :cond_1

    .line 12487
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 13199
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/n;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 13200
    :try_start_1
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_fetch_status"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13201
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 12489
    :cond_1
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 14193
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/n;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 14194
    :try_start_2
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/n;->c:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_fetch_status"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14195
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/remoteconfig/internal/g$a;",
            ">;"
        }
    .end annotation

    .line 277
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/g$a;

    move-result-object p1

    .line 1573
    iget p2, p1, Lcom/google/firebase/remoteconfig/internal/g$a;->a:I

    if-eqz p2, :cond_0

    .line 279
    invoke-static {p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1

    .line 281
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->h:Lcom/google/firebase/remoteconfig/internal/a;

    .line 1581
    iget-object p3, p1, Lcom/google/firebase/remoteconfig/internal/g$a;->b:Lcom/google/firebase/remoteconfig/internal/f;

    .line 2116
    invoke-virtual {p2, p3}, Lcom/google/firebase/remoteconfig/internal/a;->a(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/h;

    move-result-object p2

    .line 282
    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/g;->e:Ljava/util/concurrent/Executor;

    .line 3000
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/k;

    invoke-direct {v0, p1}, Lcom/google/firebase/remoteconfig/internal/k;-><init>(Lcom/google/firebase/remoteconfig/internal/g$a;)V

    .line 283
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 285
    invoke-static {p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/g$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/g;->i:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->a()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 305
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/g;->i:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 3499
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3500
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/g;->d:Lcom/google/firebase/analytics/connector/a;

    if-eqz v1, :cond_0

    .line 3505
    invoke-interface {v1}, Lcom/google/firebase/analytics/connector/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3506
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 4103
    iget-object v1, v1, Lcom/google/firebase/remoteconfig/internal/n;->c:Landroid/content/SharedPreferences;

    const-string v4, "last_fetch_etag"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 311
    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/g;->k:Ljava/util/Map;

    move-object v4, p1

    move-object v5, p2

    move-object v9, p3

    .line 306
    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->fetch(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/g$a;

    move-result-object p1

    .line 4568
    iget-object p2, p1, Lcom/google/firebase/remoteconfig/internal/g$a;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 316
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 5568
    iget-object v1, p1, Lcom/google/firebase/remoteconfig/internal/g$a;->c:Ljava/lang/String;

    .line 316
    invoke-virtual {p2, v1}, Lcom/google/firebase/remoteconfig/internal/n;->a(Ljava/lang/String;)V

    .line 320
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    .line 6233
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/n;->b:Ljava/util/Date;

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/remoteconfig/internal/n;->a(ILjava/util/Date;)V
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7048
    iget p2, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->a:I

    const/16 v1, 0x1ad

    const/4 v2, 0x1

    if-eq p2, v1, :cond_3

    const/16 v3, 0x1f6

    if-eq p2, v3, :cond_3

    const/16 v3, 0x1f7

    if-eq p2, v3, :cond_3

    const/16 v3, 0x1f8

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_4

    .line 7422
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/n;->c()Lcom/google/firebase/remoteconfig/internal/n$a;

    move-result-object p2

    .line 8253
    iget p2, p2, Lcom/google/firebase/remoteconfig/internal/n$a;->a:I

    add-int/2addr p2, v2

    .line 8439
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/google/firebase/remoteconfig/internal/g;->b:[I

    array-length v5, v4

    .line 8442
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v2

    aget v4, v4, v5

    int-to-long v4, v4

    .line 8440
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    .line 8445
    div-long v5, v3, v5

    iget-object v7, p0, Lcom/google/firebase/remoteconfig/internal/g;->g:Ljava/util/Random;

    long-to-int v4, v3

    invoke-virtual {v7, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v5, v3

    .line 7427
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 7429
    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p3, p2, v3}, Lcom/google/firebase/remoteconfig/internal/n;->a(ILjava/util/Date;)V

    .line 7398
    :cond_4
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/n;->c()Lcom/google/firebase/remoteconfig/internal/n$a;

    move-result-object p2

    .line 9048
    iget p3, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->a:I

    .line 10253
    iget v3, p2, Lcom/google/firebase/remoteconfig/internal/n$a;->a:I

    if-gt v3, v2, :cond_5

    if-ne p3, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-nez v0, :cond_b

    .line 11048
    iget p2, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->a:I

    const/16 p3, 0x191

    if-eq p2, p3, :cond_a

    const/16 p3, 0x193

    if-eq p2, p3, :cond_9

    if-eq p2, v1, :cond_8

    const/16 p3, 0x1f4

    if-eq p2, p3, :cond_7

    packed-switch p2, :pswitch_data_0

    const-string p2, "The server returned an unexpected error."

    goto :goto_3

    :pswitch_0
    const-string p2, "The server is unavailable. Please try again later."

    goto :goto_3

    :cond_7
    const-string p2, "There was an internal server error."

    goto :goto_3

    .line 10371
    :cond_8
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string p2, "The throttled response from the server was not handled correctly by the FRC SDK."

    invoke-direct {p1, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p2, "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project."

    goto :goto_3

    :cond_a
    const-string p2, "The request did not have the required credentials. Please make sure your google-services.json is valid."

    .line 10378
    :goto_3
    new-instance p3, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 12048
    iget v0, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->a:I

    const-string v1, "Fetch failed: "

    .line 10379
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    throw p3

    .line 328
    :cond_b
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    .line 10257
    iget-object p2, p2, Lcom/google/firebase/remoteconfig/internal/n$a;->b:Ljava/util/Date;

    .line 329
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;-><init>(J)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/remoteconfig/internal/g$a;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g;->j:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/n;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/g;->a(J)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/remoteconfig/internal/g$a;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/g;->h:Lcom/google/firebase/remoteconfig/internal/a;

    .line 154
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/a;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/g;->e:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/h;->a(Lcom/google/firebase/remoteconfig/internal/g;J)Lcom/google/android/gms/tasks/b;

    move-result-object p1

    .line 155
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/tasks/h;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
