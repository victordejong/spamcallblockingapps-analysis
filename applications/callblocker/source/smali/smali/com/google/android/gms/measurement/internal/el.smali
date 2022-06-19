.class final Lcom/google/android/gms/measurement/internal/el;
.super Lcom/google/android/gms/measurement/internal/fy;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field static final a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/content/SharedPreferences;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:J

.field public b:Lcom/google/android/gms/measurement/internal/es;

.field public final c:Lcom/google/android/gms/measurement/internal/ep;

.field public final d:Lcom/google/android/gms/measurement/internal/ep;

.field public final e:Lcom/google/android/gms/measurement/internal/ep;

.field public final f:Lcom/google/android/gms/measurement/internal/ep;

.field public final g:Lcom/google/android/gms/measurement/internal/ep;

.field public final h:Lcom/google/android/gms/measurement/internal/ep;

.field public final i:Lcom/google/android/gms/measurement/internal/ep;

.field public final j:Lcom/google/android/gms/measurement/internal/er;

.field public final k:Lcom/google/android/gms/measurement/internal/ep;

.field public final l:Lcom/google/android/gms/measurement/internal/ep;

.field public final m:Lcom/google/android/gms/measurement/internal/en;

.field public final n:Lcom/google/android/gms/measurement/internal/er;

.field public final o:Lcom/google/android/gms/measurement/internal/en;

.field public final p:Lcom/google/android/gms/measurement/internal/en;

.field public final q:Lcom/google/android/gms/measurement/internal/ep;

.field public r:Z

.field public s:Lcom/google/android/gms/measurement/internal/en;

.field public t:Lcom/google/android/gms/measurement/internal/en;

.field public u:Lcom/google/android/gms/measurement/internal/ep;

.field public final v:Lcom/google/android/gms/measurement/internal/er;

.field public final w:Lcom/google/android/gms/measurement/internal/er;

.field public final x:Lcom/google/android/gms/measurement/internal/ep;

.field public final y:Lcom/google/android/gms/measurement/internal/eq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/el;->a:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fy;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 28
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "last_upload"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    .line 29
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "last_upload_attempt"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->d:Lcom/google/android/gms/measurement/internal/ep;

    .line 30
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "backoff"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->e:Lcom/google/android/gms/measurement/internal/ep;

    .line 31
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "last_delete_stale"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->f:Lcom/google/android/gms/measurement/internal/ep;

    .line 32
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "time_before_start"

    const-wide/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->k:Lcom/google/android/gms/measurement/internal/ep;

    .line 33
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "session_timeout"

    const-wide/32 v2, 0x1b7740

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->l:Lcom/google/android/gms/measurement/internal/ep;

    .line 34
    new-instance v0, Lcom/google/android/gms/measurement/internal/en;

    const-string/jumbo v1, "start_new_session"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/en;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->m:Lcom/google/android/gms/measurement/internal/en;

    .line 35
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "last_pause_time"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->q:Lcom/google/android/gms/measurement/internal/ep;

    .line 36
    new-instance v0, Lcom/google/android/gms/measurement/internal/er;

    const-string/jumbo v1, "non_personalized_ads"

    invoke-direct {v0, p0, v1, v6}, Lcom/google/android/gms/measurement/internal/er;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->n:Lcom/google/android/gms/measurement/internal/er;

    .line 37
    new-instance v0, Lcom/google/android/gms/measurement/internal/en;

    const-string/jumbo v1, "use_dynamite_api"

    invoke-direct {v0, p0, v1, v7}, Lcom/google/android/gms/measurement/internal/en;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->o:Lcom/google/android/gms/measurement/internal/en;

    .line 38
    new-instance v0, Lcom/google/android/gms/measurement/internal/en;

    const-string/jumbo v1, "allow_remote_dynamite"

    invoke-direct {v0, p0, v1, v7}, Lcom/google/android/gms/measurement/internal/en;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->p:Lcom/google/android/gms/measurement/internal/en;

    .line 39
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "midnight_offset"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->g:Lcom/google/android/gms/measurement/internal/ep;

    .line 40
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "first_open_time"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->h:Lcom/google/android/gms/measurement/internal/ep;

    .line 41
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "app_install_time"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->i:Lcom/google/android/gms/measurement/internal/ep;

    .line 42
    new-instance v0, Lcom/google/android/gms/measurement/internal/er;

    const-string/jumbo v1, "app_instance_id"

    invoke-direct {v0, p0, v1, v6}, Lcom/google/android/gms/measurement/internal/er;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->j:Lcom/google/android/gms/measurement/internal/er;

    .line 43
    new-instance v0, Lcom/google/android/gms/measurement/internal/en;

    const-string/jumbo v1, "app_backgrounded"

    invoke-direct {v0, p0, v1, v7}, Lcom/google/android/gms/measurement/internal/en;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->s:Lcom/google/android/gms/measurement/internal/en;

    .line 44
    new-instance v0, Lcom/google/android/gms/measurement/internal/en;

    const-string/jumbo v1, "deep_link_retrieval_complete"

    invoke-direct {v0, p0, v1, v7}, Lcom/google/android/gms/measurement/internal/en;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->t:Lcom/google/android/gms/measurement/internal/en;

    .line 45
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "deep_link_retrieval_attempts"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->u:Lcom/google/android/gms/measurement/internal/ep;

    .line 46
    new-instance v0, Lcom/google/android/gms/measurement/internal/er;

    const-string/jumbo v1, "firebase_feature_rollouts"

    invoke-direct {v0, p0, v1, v6}, Lcom/google/android/gms/measurement/internal/er;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    .line 47
    new-instance v0, Lcom/google/android/gms/measurement/internal/er;

    const-string/jumbo v1, "deferred_attribution_cache"

    invoke-direct {v0, p0, v1, v6}, Lcom/google/android/gms/measurement/internal/er;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->w:Lcom/google/android/gms/measurement/internal/er;

    .line 48
    new-instance v0, Lcom/google/android/gms/measurement/internal/ep;

    const-string/jumbo v1, "deferred_attribution_cache_timestamp"

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->x:Lcom/google/android/gms/measurement/internal/ep;

    .line 49
    new-instance v0, Lcom/google/android/gms/measurement/internal/eq;

    const-string/jumbo v1, "default_event_parameters"

    invoke-direct {v0, p0, v1, v6}, Lcom/google/android/gms/measurement/internal/eq;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->y:Lcom/google/android/gms/measurement/internal/eq;

    .line 50
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/el;->B:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/el;->D:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/el;->B:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/el;->C:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :goto_0
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->a:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)J

    move-result-wide v2

    .line 7
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/el;->D:J

    .line 8
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/ads/c/a;->a(Z)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/c/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/c/a$a;

    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/el;->B:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/el;->C:Z

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->B:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->B:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/ads/c/a;->a(Z)V

    .line 20
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/el;->B:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/el;->C:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->B:Ljava/lang/String;

    goto :goto_1
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method final a(J)Z
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->l:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/el;->q:Lcom/google/android/gms/measurement/internal/ep;

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 129
    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/el;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/google/android/gms/measurement/internal/jw;->e()Ljava/security/MessageDigest;

    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%032X"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->A:Landroid/content/SharedPreferences;

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->A:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/el;->r:Z

    .line 54
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/el;->r:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "has_been_opened"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/es;

    const-string/jumbo v3, "health_monitor"

    .line 59
    const-wide/16 v4, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->b:Lcom/google/android/gms/measurement/internal/dr;

    .line 60
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v2, p0

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/es;-><init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/eo;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/el;->b:Lcom/google/android/gms/measurement/internal/es;

    .line 63
    return-void
.end method

.method final b(Z)V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method protected final c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->A:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "gmp_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    return-void
.end method

.method final c(Z)V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "App measurement setting deferred collection"

    .line 121
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "deferred_analytics_collection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    return-void
.end method

.method final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "admob_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method final e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "admob_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final f()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method final g()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->h()Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/el;->b(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method final h()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "measurement_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 111
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 115
    const-string/jumbo v3, "previous_os_version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :cond_0
    return-object v0
.end method

.method final j()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/el;->A:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "deferred_analytics_collection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
