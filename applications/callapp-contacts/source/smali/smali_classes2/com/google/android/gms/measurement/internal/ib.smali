.class final Lcom/google/android/gms/measurement/internal/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic d:Lcom/google/android/gms/internal/measurement/nc;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/nc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ib;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ib;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ib;->c:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/ib;->d:Lcom/google/android/gms/internal/measurement/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    if-nez v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Failed to get conditional properties; not connected to service"

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ib;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ib;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ib;->d:Lcom/google/android/gms/internal/measurement/nc;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ib;->c:Lcom/google/android/gms/measurement/internal/zzp;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ib;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ib;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ib;->c:Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/df;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    .line 2001
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ik;->i()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Failed to get conditional properties; remote exception"

    .line 12
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ib;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ib;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    goto :goto_0

    .line 6
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ib;->e:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ib;->d:Lcom/google/android/gms/internal/measurement/nc;

    .line 6
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Ljava/util/ArrayList;)V

    .line 14
    throw v1
.end method
