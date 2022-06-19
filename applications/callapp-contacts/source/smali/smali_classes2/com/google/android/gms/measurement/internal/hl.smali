.class final Lcom/google/android/gms/measurement/internal/hl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/internal/measurement/nc;

.field final synthetic f:Lcom/google/android/gms/measurement/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/internal/measurement/nc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hl;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/hl;->c:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/hl;->d:Z

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Lcom/google/android/gms/internal/measurement/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    if-nez v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Failed to get user properties; not connected to service"

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hl;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hl;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Lcom/google/android/gms/internal/measurement/nc;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Landroid/os/Bundle;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hl;->c:Lcom/google/android/gms/measurement/internal/zzp;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hl;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hl;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/hl;->d:Z

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/hl;->c:Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/df;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/os/Bundle;

    .line 10
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzkl;

    .line 12
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zze:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 13
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzd:Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 15
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzg:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 17
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :cond_5
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    .line 2001
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ik;->i()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Lcom/google/android/gms/internal/measurement/nc;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 17
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Failed to get user properties; remote exception"

    .line 20
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hl;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Lcom/google/android/gms/internal/measurement/nc;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Landroid/os/Bundle;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hl;->f:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hl;->e:Lcom/google/android/gms/internal/measurement/nc;

    .line 6
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Landroid/os/Bundle;)V

    .line 22
    throw v1
.end method
