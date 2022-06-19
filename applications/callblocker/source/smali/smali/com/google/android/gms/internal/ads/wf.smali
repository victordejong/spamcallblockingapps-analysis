.class public final Lcom/google/android/gms/internal/ads/wf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->a:Ljava/lang/Object;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->b:Ljava/lang/String;

    .line 4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->c:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wf;->d:Z

    .line 6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->e:Ljava/lang/String;

    .line 7
    return-void
.end method

.method private final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    const-string/jumbo v0, "debug_signals_id.txt"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->b:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ve;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->b:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    const-string/jumbo v0, "debug_signals_id.txt"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wf;->b:Ljava/lang/String;

    .line 127
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->b:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    .line 136
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v6, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v0, Lcom/google/android/gms/internal/ads/wd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wd;-><init>(Lcom/google/android/gms/internal/ads/wf;Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bY:Lcom/google/android/gms/internal/ads/ect;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/wf;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/ads/wf;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string/jumbo v0, "Not linked for in app preview."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    move v0, v1

    .line 52
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 41
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "gct"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/wf;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->c:Ljava/lang/String;

    .line 51
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string/jumbo v2, "Fail to get in app preview response json."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 47
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ca:Lcom/google/android/gms/internal/ads/ect;

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4, p2}, Lcom/google/android/gms/internal/ads/wf;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "debugData"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bZ:Lcom/google/android/gms/internal/ads/ect;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/wf;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/ads/wf;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string/jumbo v0, "Not linked for debug signals."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 64
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "debug_mode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wf;->d:Z

    .line 74
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string/jumbo v2, "Fail to get debug mode response json."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 69
    goto :goto_0
.end method

.method private final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 115
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "linkedDeviceId"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/wf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    const-string/jumbo v1, "adSlotPath"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    const-string/jumbo v1, "afmaVersion"

    invoke-virtual {v0, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Lcom/google/android/gms/internal/ads/wq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/wq;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/wq;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    .line 80
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cb:Lcom/google/android/gms/internal/ads/ect;

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/crt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 84
    const-string/jumbo v3, "Timeout while retriving a response from: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/crt;->cancel(Z)Z

    .line 93
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 88
    const-string/jumbo v3, "Interrupted while retriving a response from: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/crt;->cancel(Z)Z

    goto :goto_2

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 91
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 92
    const-string/jumbo v2, "Error retriving a response from: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bX:Lcom/google/android/gms/internal/ads/ect;

    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/wf;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 99
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 100
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wf;->c:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/wf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    const-string/jumbo v0, "In-app preview failed to load because of a system error. Please try again later."

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/google/android/gms/internal/ads/wf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 11
    :cond_1
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    const-string/jumbo v0, "Creative is not pushed for this device."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "There was no creative pushed from DFP to the device."

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/wf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 14
    :cond_2
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    const-string/jumbo v0, "The app is not linked for creative preview."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/wf;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_3
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string/jumbo v0, "Device is linked for in app preview."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "The device is successfully linked for creative preview."

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/wf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wf;->b()Z

    move-result v0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/wf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/ads/wf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    const-string/jumbo v0, "Device is linked for debug signals."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "The device is successfully linked for troubleshooting."

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/wf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/wf;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wf;->d:Z

    monitor-exit v1

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wf;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 104
    :cond_1
    const-string/jumbo v0, "Sending troubleshooting signals to the server."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/wf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method
