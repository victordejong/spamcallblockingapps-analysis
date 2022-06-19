.class final Lcom/google/android/gms/measurement/internal/ig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/df;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ij;Lcom/google/android/gms/measurement/internal/df;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ig;->b:Lcom/google/android/gms/measurement/internal/ij;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ig;->a:Lcom/google/android/gms/measurement/internal/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ig;->b:Lcom/google/android/gms/measurement/internal/ij;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ig;->b:Lcom/google/android/gms/measurement/internal/ij;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ij;->a(Lcom/google/android/gms/measurement/internal/ij;)Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ig;->b:Lcom/google/android/gms/measurement/internal/ij;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ij;->b:Lcom/google/android/gms/measurement/internal/ik;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ik;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ig;->b:Lcom/google/android/gms/measurement/internal/ij;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ij;->b:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Connected to remote service"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ig;->b:Lcom/google/android/gms/measurement/internal/ij;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ij;->b:Lcom/google/android/gms/measurement/internal/ik;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ig;->a:Lcom/google/android/gms/measurement/internal/df;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ik;->a(Lcom/google/android/gms/measurement/internal/df;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
