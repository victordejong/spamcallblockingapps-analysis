.class final Lcom/google/android/gms/measurement/internal/ir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/dq;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/im;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/im;Lcom/google/android/gms/measurement/internal/dq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ir;->b:Lcom/google/android/gms/measurement/internal/im;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ir;->a:Lcom/google/android/gms/measurement/internal/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ir;->b:Lcom/google/android/gms/measurement/internal/im;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ir;->b:Lcom/google/android/gms/measurement/internal/im;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/im;->a(Lcom/google/android/gms/measurement/internal/im;Z)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ir;->b:Lcom/google/android/gms/measurement/internal/im;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/hu;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ir;->b:Lcom/google/android/gms/measurement/internal/im;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ir;->b:Lcom/google/android/gms/measurement/internal/im;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ir;->a:Lcom/google/android/gms/measurement/internal/dq;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/dq;)V

    .line 7
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
