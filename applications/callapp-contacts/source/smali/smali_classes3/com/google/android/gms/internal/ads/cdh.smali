.class final synthetic Lcom/google/android/gms/internal/ads/cdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cgy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cde;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cde;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdh;->a:Lcom/google/android/gms/internal/ads/cde;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cdh;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdh;->a:Lcom/google/android/gms/internal/ads/cde;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdh;->b:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    .line 1016
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->dk:Lcom/google/android/gms/internal/ads/af;

    .line 1017
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 1018
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "quality_signals"

    .line 1019
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1020
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dj:Lcom/google/android/gms/internal/ads/af;

    .line 1021
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 1022
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1023
    sget-object v1, Lcom/google/android/gms/internal/ads/cde;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/apf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cde;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/zzvq;)V

    const-string v2, "quality_signals"

    .line 1025
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cde;->d:Lcom/google/android/gms/internal/ads/cqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cqm;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1026
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1027
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/apf;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cde;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/zzvq;)V

    const-string v1, "quality_signals"

    .line 1028
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cde;->d:Lcom/google/android/gms/internal/ads/cqm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cqm;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string v1, "seq_num"

    .line 1029
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cde;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cde;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cde;->b:Ljava/lang/String;

    :goto_1
    const-string v1, "session_id"

    .line 1031
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
