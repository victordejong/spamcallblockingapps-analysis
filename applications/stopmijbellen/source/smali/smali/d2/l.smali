.class public Ld2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:Ld2/d4;

.field public d:Ld2/f4;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Ld2/l;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ld2/d4;

    invoke-direct {v0}, Ld2/d4;-><init>()V

    iput-object v0, p0, Ld2/l;->c:Ld2/d4;

    .line 4
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    iput-object v0, p0, Ld2/l;->d:Ld2/f4;

    const-string v1, "origin_store"

    const-string v2, "google"

    .line 5
    invoke-static {v0, v1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 8
    iget-object v1, v0, Ld2/f1;->r:Ld2/l;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Ld2/f1;->s()Ld2/l;

    move-result-object v1

    iget-object v1, v1, Ld2/l;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ld2/l;->a(Ljava/lang/String;)Ld2/l;

    .line 10
    invoke-virtual {v0}, Ld2/f1;->s()Ld2/l;

    move-result-object v0

    iget-object v0, v0, Ld2/l;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld2/l;->b([Ljava/lang/String;)Ld2/l;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ld2/l;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iput-object p1, p0, Ld2/l;->a:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Ld2/l;->d:Ld2/f4;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Ld2/l;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iput-object p1, p0, Ld2/l;->b:[Ljava/lang/String;

    .line 2
    new-instance v0, Ld2/d4;

    invoke-direct {v0}, Ld2/d4;-><init>()V

    .line 3
    iput-object v0, p0, Ld2/l;->c:Ld2/d4;

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Ld2/l;->c:Ld2/d4;

    aget-object v2, p1, v0

    .line 6
    invoke-virtual {v1, v2}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public c(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unknown"

    .line 3
    :goto_0
    iget-object v1, p0, Ld2/l;->d:Ld2/f4;

    const-string v2, "bundle_id"

    invoke-static {v1, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Ld2/l;->d:Ld2/f4;

    const-string v1, "use_forced_controller"

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_1
    iget-object v2, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    iget-object v0, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ld2/x3;->R:Z

    .line 9
    :cond_0
    iget-object v0, p0, Ld2/l;->d:Ld2/f4;

    const-string v1, "use_staging_launch_server"

    .line 10
    iget-object v2, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v2

    .line 11
    :try_start_4
    iget-object v0, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    const-string v0, "https://adc3-launch-staging.adcolony.com/v4/launch"

    .line 12
    sput-object v0, Ld2/f1;->X:Ljava/lang/String;

    :cond_1
    const-string v0, "IABUSPrivacy_String"

    .line 13
    invoke-static {p1, v0}, Ld2/i3;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IABTCF_TCString"

    .line 14
    invoke-static {p1, v1}, Ld2/i3;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IABTCF_gdprApplies"

    .line 15
    invoke-static {p1}, Ld2/i3;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 16
    :try_start_5
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    const-string p1, "Key IABTCF_gdprApplies in SharedPreferences does not have an int value."

    .line 17
    invoke-static {v4, v5, p1, v5}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_2
    if-eqz v0, :cond_2

    .line 18
    iget-object p1, p0, Ld2/l;->d:Ld2/f4;

    const-string v2, "ccpa_consent_string"

    invoke-static {p1, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    if-eqz v1, :cond_3

    .line 19
    iget-object p1, p0, Ld2/l;->d:Ld2/f4;

    const-string v0, "gdpr_consent_string"

    invoke-static {p1, v0, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz v3, :cond_4

    if-ne v3, v5, :cond_6

    .line 20
    :cond_4
    iget-object p1, p0, Ld2/l;->d:Ld2/f4;

    const-string v0, "gdpr_required"

    if-ne v3, v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-static {p1, v0, v4}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    .line 21
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    iget-object v1, p0, Ld2/l;->d:Ld2/f4;

    const-string v2, "mediation_network"

    .line 3
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 4
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    iget-object v1, p0, Ld2/l;->d:Ld2/f4;

    const-string v2, "mediation_network_version"

    .line 6
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    .line 7
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    iget-object v0, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    iget-object v1, p0, Ld2/l;->d:Ld2/f4;

    const-string v2, "plugin"

    .line 3
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 4
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    iget-object v1, p0, Ld2/l;->d:Ld2/f4;

    const-string v2, "plugin_version"

    .line 6
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    .line 7
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    iget-object v0, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    return-object v0
.end method
