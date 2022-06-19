.class final synthetic Lcom/google/android/gms/measurement/internal/fx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fx;->a:Lcom/google/android/gms/measurement/internal/gv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fx;->a:Lcom/google/android/gms/measurement/internal/gv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ee;->n:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ee;->o:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/ee;->o:Lcom/google/android/gms/measurement/internal/ea;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    const-wide/16 v3, 0x5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->n:Lcom/google/android/gms/measurement/internal/dy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dy;->a(Z)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->x()V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void
.end method
