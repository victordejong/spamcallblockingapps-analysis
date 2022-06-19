.class final Lcom/google/android/gms/measurement/internal/hp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic b:Lcom/google/android/gms/internal/measurement/nc;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/nc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hp;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hp;->b:Lcom/google/android/gms/internal/measurement/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->au:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ee;->e()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->h:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v2

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ee;->f:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->b:Lcom/google/android/gms/internal/measurement/nc;

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 4000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    goto :goto_0

    .line 9
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hp;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hp;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 11
    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/df;->c(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ee;->f:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    .line 4001
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ik;->i()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 9
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 5000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 25
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    goto :goto_0

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hp;->b:Lcom/google/android/gms/internal/measurement/nc;

    .line 9
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;Ljava/lang/String;)V

    .line 26
    throw v0
.end method
