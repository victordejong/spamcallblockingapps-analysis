.class public Lx4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/a;


# static fields
.field public static volatile c:Lx4/a;


# instance fields
.field public final a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lx4/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lx4/a$b;)Lx4/a$a;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ly4/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lx4/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx4/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v0, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    const-string v2, "fiam"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ly4/c;

    .line 6
    invoke-direct {v2, v0, p2}, Ly4/c;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lx4/a$b;)V

    goto :goto_2

    :cond_3
    const-string v2, "crash"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "clx"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v2, Ly4/e;

    .line 9
    invoke-direct {v2, v0, p2}, Ly4/e;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lx4/a$b;)V

    :goto_2
    if-eqz v2, :cond_6

    .line 10
    iget-object p2, p0, Lx4/b;->b:Ljava/util/Map;

    .line 11
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p2, Lx4/b$a;

    invoke-direct {p2, p0, p1}, Lx4/b$a;-><init>(Lx4/b;Ljava/lang/String;)V

    return-object p2

    :cond_6
    return-object v1
.end method

.method public b(Z)Ljava/util/Map;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1, v1, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lx4/a$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 3
    sget-object v1, Ly4/a;->a:Ljava/util/Set;

    .line 4
    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v3, Lx4/a$c;

    invoke-direct {v3}, Lx4/a$c;-><init>()V

    const/4 v4, 0x0

    const-string v5, "origin"

    .line 6
    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lx4/a$c;->a:Ljava/lang/String;

    const-string v5, "name"

    .line 8
    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lx4/a$c;->b:Ljava/lang/String;

    const-class v5, Ljava/lang/Object;

    const-string v6, "value"

    .line 10
    invoke-static {p2, v6, v5, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lx4/a$c;->c:Ljava/lang/Object;

    const-string v5, "trigger_event_name"

    .line 11
    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lx4/a$c;->d:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "trigger_timeout"

    .line 13
    invoke-static {p2, v6, v1, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lx4/a$c;->e:J

    const-string v6, "timed_out_event_name"

    .line 14
    invoke-static {p2, v6, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lx4/a$c;->f:Ljava/lang/String;

    const-class v6, Landroid/os/Bundle;

    const-string v7, "timed_out_event_params"

    .line 15
    invoke-static {p2, v7, v6, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v3, Lx4/a$c;->g:Landroid/os/Bundle;

    const-string v6, "triggered_event_name"

    .line 16
    invoke-static {p2, v6, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lx4/a$c;->h:Ljava/lang/String;

    const-class v6, Landroid/os/Bundle;

    const-string v7, "triggered_event_params"

    .line 17
    invoke-static {p2, v7, v6, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v3, Lx4/a$c;->i:Landroid/os/Bundle;

    const-string v6, "time_to_live"

    .line 18
    invoke-static {p2, v6, v1, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lx4/a$c;->j:J

    const-string v6, "expired_event_name"

    .line 19
    invoke-static {p2, v6, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lx4/a$c;->k:Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    const-string v6, "expired_event_params"

    .line 20
    invoke-static {p2, v6, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v3, Lx4/a$c;->l:Landroid/os/Bundle;

    const-class v2, Ljava/lang/Boolean;

    .line 21
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "active"

    .line 22
    invoke-static {p2, v6, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lx4/a$c;->n:Z

    const-string v2, "creation_timestamp"

    .line 23
    invoke-static {p2, v2, v1, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lx4/a$c;->m:J

    const-string v2, "triggered_timestamp"

    .line 24
    invoke-static {p2, v2, v1, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v3, Lx4/a$c;->o:J

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object p2, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p2, p1, p3, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Lx4/a$c;)V
    .locals 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Ly4/a;->a:Ljava/util/Set;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 2
    :cond_1
    iget-object v2, p1, Lx4/a$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v3, p1, Lx4/a$c;->c:Ljava/lang/Object;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    :cond_3
    invoke-static {v2}, Ly4/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    iget-object v3, p1, Lx4/a$c;->b:Ljava/lang/String;

    const-string v4, "_ce1"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "fcm"

    if-nez v4, :cond_9

    const-string v4, "_ce2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v4, "_ln"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "fiam"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_6
    sget-object v4, Ly4/a;->e:Ljava/util/List;

    .line 10
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    sget-object v4, Ly4/a;->f:Ljava/util/List;

    .line 11
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    .line 13
    :cond_9
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "frc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_c

    goto/16 :goto_0

    .line 14
    :cond_c
    iget-object v3, p1, Lx4/a$c;->k:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 15
    iget-object v4, p1, Lx4/a$c;->l:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ly4/a;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    .line 16
    :cond_d
    iget-object v3, p1, Lx4/a$c;->k:Ljava/lang/String;

    iget-object v4, p1, Lx4/a$c;->l:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Ly4/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    :cond_e
    iget-object v3, p1, Lx4/a$c;->h:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 18
    iget-object v4, p1, Lx4/a$c;->i:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ly4/a;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    .line 19
    :cond_f
    iget-object v3, p1, Lx4/a$c;->h:Ljava/lang/String;

    iget-object v4, p1, Lx4/a$c;->i:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Ly4/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    :cond_10
    iget-object v3, p1, Lx4/a$c;->f:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 21
    iget-object v4, p1, Lx4/a$c;->g:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ly4/a;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    .line 22
    :cond_11
    iget-object v3, p1, Lx4/a$c;->f:Ljava/lang/String;

    iget-object v4, p1, Lx4/a$c;->g:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Ly4/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    :goto_5
    if-nez v0, :cond_13

    return-void

    .line 23
    :cond_13
    iget-object v0, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 24
    new-instance v1, Landroid/os/Bundle;

    .line 25
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v2, p1, Lx4/a$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string v3, "origin"

    .line 27
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_14
    iget-object v2, p1, Lx4/a$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_15

    const-string v3, "name"

    .line 29
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_15
    iget-object v2, p1, Lx4/a$c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 31
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 32
    :cond_16
    iget-object v2, p1, Lx4/a$c;->d:Ljava/lang/String;

    if-eqz v2, :cond_17

    const-string v3, "trigger_event_name"

    .line 33
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_17
    iget-wide v2, p1, Lx4/a$c;->e:J

    const-string v4, "trigger_timeout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    iget-object v2, p1, Lx4/a$c;->f:Ljava/lang/String;

    if-eqz v2, :cond_18

    const-string v3, "timed_out_event_name"

    .line 36
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_18
    iget-object v2, p1, Lx4/a$c;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_19

    const-string v3, "timed_out_event_params"

    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    :cond_19
    iget-object v2, p1, Lx4/a$c;->h:Ljava/lang/String;

    if-eqz v2, :cond_1a

    const-string v3, "triggered_event_name"

    .line 40
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1a
    iget-object v2, p1, Lx4/a$c;->i:Landroid/os/Bundle;

    if-eqz v2, :cond_1b

    const-string v3, "triggered_event_params"

    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    :cond_1b
    iget-wide v2, p1, Lx4/a$c;->j:J

    const-string v4, "time_to_live"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    iget-object v2, p1, Lx4/a$c;->k:Ljava/lang/String;

    if-eqz v2, :cond_1c

    const-string v3, "expired_event_name"

    .line 45
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1c
    iget-object v2, p1, Lx4/a$c;->l:Landroid/os/Bundle;

    if-eqz v2, :cond_1d

    const-string v3, "expired_event_params"

    .line 47
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    :cond_1d
    iget-wide v2, p1, Lx4/a$c;->m:J

    const-string v4, "creation_timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 49
    iget-boolean v2, p1, Lx4/a$c;->n:Z

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    iget-wide v2, p1, Lx4/a$c;->o:J

    const-string p1, "triggered_timestamp"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->setConditionalUserProperty(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    .line 1
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-static {p1}, Ly4/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p2, p3}, Ly4/a;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p1, p2, p3}, Ly4/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "clx"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_ae"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-string v2, "_r"

    .line 7
    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    :cond_4
    iget-object v0, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lx4/b;->a:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getMaxUserProperties(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
