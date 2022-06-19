.class final Lcom/google/android/gms/measurement/internal/ee;
.super Lcom/google/android/gms/measurement/internal/fn;
.source "SourceFile"


# static fields
.field static final a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Landroid/content/SharedPreferences;

.field public c:Lcom/google/android/gms/measurement/internal/eb;

.field public final d:Lcom/google/android/gms/measurement/internal/ea;

.field public final e:Lcom/google/android/gms/measurement/internal/ea;

.field public final f:Lcom/google/android/gms/measurement/internal/ed;

.field public final g:Lcom/google/android/gms/measurement/internal/ea;

.field public final h:Lcom/google/android/gms/measurement/internal/dy;

.field public final i:Lcom/google/android/gms/measurement/internal/ed;

.field public final j:Lcom/google/android/gms/measurement/internal/dy;

.field public final k:Lcom/google/android/gms/measurement/internal/ea;

.field public l:Z

.field public final m:Lcom/google/android/gms/measurement/internal/dy;

.field public final n:Lcom/google/android/gms/measurement/internal/dy;

.field public final o:Lcom/google/android/gms/measurement/internal/ea;

.field public final p:Lcom/google/android/gms/measurement/internal/ed;

.field public final q:Lcom/google/android/gms/measurement/internal/ed;

.field public final r:Lcom/google/android/gms/measurement/internal/ea;

.field public final s:Lcom/google/android/gms/measurement/internal/dz;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/ee;->a:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/es;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fn;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/ea;

    const-string v0, "session_timeout"

    const-wide/32 v1, 0x1b7740

    .line 2
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->g:Lcom/google/android/gms/measurement/internal/ea;

    new-instance p1, Lcom/google/android/gms/measurement/internal/dy;

    const-string v0, "start_new_session"

    const/4 v1, 0x1

    .line 3
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/dy;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->h:Lcom/google/android/gms/measurement/internal/dy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ea;

    const-string v0, "last_pause_time"

    const-wide/16 v1, 0x0

    .line 4
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->k:Lcom/google/android/gms/measurement/internal/ea;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ed;

    const-string v0, "non_personalized_ads"

    const/4 v3, 0x0

    .line 5
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/ed;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->i:Lcom/google/android/gms/measurement/internal/ed;

    new-instance p1, Lcom/google/android/gms/measurement/internal/dy;

    const-string v0, "allow_remote_dynamite"

    const/4 v4, 0x0

    .line 6
    invoke-direct {p1, p0, v0, v4}, Lcom/google/android/gms/measurement/internal/dy;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->j:Lcom/google/android/gms/measurement/internal/dy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ea;

    const-string v0, "first_open_time"

    .line 7
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->d:Lcom/google/android/gms/measurement/internal/ea;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ea;

    const-string v0, "app_install_time"

    .line 8
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->e:Lcom/google/android/gms/measurement/internal/ea;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ed;

    const-string v0, "app_instance_id"

    .line 9
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/ed;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->f:Lcom/google/android/gms/measurement/internal/ed;

    new-instance p1, Lcom/google/android/gms/measurement/internal/dy;

    const-string v0, "app_backgrounded"

    .line 10
    invoke-direct {p1, p0, v0, v4}, Lcom/google/android/gms/measurement/internal/dy;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->m:Lcom/google/android/gms/measurement/internal/dy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/dy;

    const-string v0, "deep_link_retrieval_complete"

    .line 11
    invoke-direct {p1, p0, v0, v4}, Lcom/google/android/gms/measurement/internal/dy;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->n:Lcom/google/android/gms/measurement/internal/dy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ea;

    const-string v0, "deep_link_retrieval_attempts"

    .line 12
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->o:Lcom/google/android/gms/measurement/internal/ea;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ed;

    const-string v0, "firebase_feature_rollouts"

    .line 13
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/ed;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->p:Lcom/google/android/gms/measurement/internal/ed;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ed;

    const-string v0, "deferred_attribution_cache"

    .line 14
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/ed;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->q:Lcom/google/android/gms/measurement/internal/ed;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ea;

    const-string v0, "deferred_attribution_cache_timestamp"

    .line 15
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->r:Lcom/google/android/gms/measurement/internal/ea;

    new-instance p1, Lcom/google/android/gms/measurement/internal/dz;

    const-string v0, "default_event_parameters"

    .line 16
    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/dz;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ee;->s:Lcom/google/android/gms/measurement/internal/dz;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ee;->u:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/ee;->w:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ee;->v:Z

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 3
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    sget-object v4, Lcom/google/android/gms/measurement/internal/dc;->a:Lcom/google/android/gms/measurement/internal/da;

    .line 6
    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/e;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/ee;->w:J

    const/4 p1, 0x1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->u:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/ee;->u:Ljava/lang/String;

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/ee;->v:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Unable to get advertising id"

    .line 13
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->u:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->u:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ee;->v:Z

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final a(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "App measurement setting deferred collection"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final a(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/f;->a(II)Z

    move-result p1

    return p1
.end method

.method final a(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->g:Lcom/google/android/gms/measurement/internal/ea;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->k:Lcom/google/android/gms/measurement/internal/ea;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final ah_()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fn;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method final ai_()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b()V
    .locals 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull$List;
        value = {
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.preferences"
                }
            .end subannotation,
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.monitoringSample"
                }
            .end subannotation
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->b:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ee;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->b:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/eb;

    const-wide/16 v1, 0x0

    .line 8
    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->b:Lcom/google/android/gms/measurement/internal/da;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v5, "health_monitor"

    move-object v3, v0

    move-object v4, p0

    .line 9
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/eb;-><init>(Lcom/google/android/gms/measurement/internal/ee;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/dx;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ee;->c:Lcom/google/android/gms/measurement/internal/eb;

    return-void
.end method

.method final e()Lcom/google/android/gms/measurement/internal/f;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method
