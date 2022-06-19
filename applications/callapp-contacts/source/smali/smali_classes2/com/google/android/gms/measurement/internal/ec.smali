.class abstract Lcom/google/android/gms/measurement/internal/ec;
.super Lcom/google/android/gms/measurement/internal/db;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/es;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/db;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ec;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->u()V

    return-void
.end method


# virtual methods
.method protected ac_()V
    .locals 0

    return-void
.end method

.method protected abstract b()Z
.end method

.method final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ec;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ec;->a:Z

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ec;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ec;->a:Z

    :cond_0
    return-void

    .line 0
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ec;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->ac_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ec;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ec;->a:Z

    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
